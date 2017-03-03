class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.belongs_to :type, index: true, foreign_key: true
      t.integer :effect_type
      t.integer :power
      t.string :hit
      t.integer :pp
      t.boolean :is_direct
      t.text :effect

      t.timestamps null: false
    end
  end
end
