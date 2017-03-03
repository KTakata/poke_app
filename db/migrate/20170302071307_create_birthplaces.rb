class CreateBirthplaces < ActiveRecord::Migration
  def change
    create_table :birthplaces do |t|
      t.string :label
      t.string :order
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
