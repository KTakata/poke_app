class CreateWeakCompatibilities < ActiveRecord::Migration
  def change
    create_table :weak_compatibilities do |t|
      t.integer :type1_id
      t.integer :type2_id

      t.timestamps null: false
    end

    add_index :weak_compatibilities, :type1_id
    add_index :weak_compatibilities, :type2_id
  end
end
