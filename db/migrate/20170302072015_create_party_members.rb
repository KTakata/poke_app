class CreatePartyMembers < ActiveRecord::Migration
  def change
    create_table :party_members do |t|
      t.belongs_to :party, index: true, foreign_key: true
      t.string :member
      t.belongs_to :item, index: true, foreign_key: true
      t.integer :no

      t.timestamps null: false
    end
  end
end
