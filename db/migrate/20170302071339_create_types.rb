class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :jap_name
      t.string :jap_name_kana
      t.integer :sort_num

      t.timestamps null: false
    end
  end
end
