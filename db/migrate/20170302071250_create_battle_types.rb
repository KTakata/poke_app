class CreateBattleTypes < ActiveRecord::Migration
  def change
    create_table :battle_types do |t|
      t.string :label
      t.string :order
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
