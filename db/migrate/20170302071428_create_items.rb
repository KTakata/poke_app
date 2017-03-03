class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :effect1
      t.string :effect2
      t.string :place1
      t.string :place2
      t.string :place3
      t.string :place4
      t.string :place5
      t.string :place6
      t.belongs_to :item_type, index: true, foreign_key: true
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
