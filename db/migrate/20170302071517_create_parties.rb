class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.text :remarks
      t.string :name
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :battle_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
