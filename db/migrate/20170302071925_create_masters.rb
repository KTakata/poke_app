class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :no
      t.string :name
      t.integer :type1_id
      t.integer :type2_id
      t.integer :hp
      t.integer :attack
      t.integer :block
      t.integer :contact
      t.integer :deffence
      t.integer :speed
      t.integer :total
      t.integer :height
      t.integer :weight
      t.string :form
      t.integer :characteristic1_id
      t.integer :characteristic2_id
      t.integer :characteristic3_id

      t.timestamps null: false
    end
    add_index :masters, :type1_id
    add_index :masters, :type2_id
    add_index :masters, :characteristic1_id
    add_index :masters, :characteristic2_id
    add_index :masters, :characteristic3_id
  end
end
