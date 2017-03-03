class CreateStrongCompatibilities < ActiveRecord::Migration
  def change
    create_table :strong_compatibilities do |t|
      t.integer :type1_id
      t.integer :type2_id

      t.timestamps null: false
    end
    add_index :strong_compatibilities, :type1_id
    add_index :strong_compatibilities, :type2_id
  end
end
