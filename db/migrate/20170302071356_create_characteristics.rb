class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.string :name
      t.text :effect

      t.timestamps null: false
    end
  end
end
