require 'csv'

csv_import_models =
  if ENV['models']
    ENV['models'].split(',')
  else
    %w(type)
  end

csv_import_models.each do |model_name|
  puts const = model_name.camelize.constantize

  const.transaction do
    ids = []

    CSV.foreach(
      Rails.root.join("db/seeds/#{model_name.pluralize}.csv"),
      headers: true
    ) do |csv_row|
      ids << id = csv_row.to_hash['id']
      record = const.find_or_initialize_by(id: id)
      record.update!(csv_row.to_hash.select { |k, _| k.in?(const.column_names) })
      puts "=> #{record.inspect}"
    end

    const.where.not(id: ids).destroy_all

    ActiveRecord::Base.connection.execute("UPDATE sqlite_sequence SET seq=#{ids.map(&:to_i).max} WHERE name='#{model_name.pluralize}'")
  end
end
