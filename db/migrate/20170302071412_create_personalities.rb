class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.string :name
      t.string :up_status
      t.string :down_status
      t.boolean :is_synchro

      t.timestamps null: false
    end
  end
end
