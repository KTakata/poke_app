class CreateParticipatingRegions < ActiveRecord::Migration
  def change
    create_table :participating_regions do |t|
      t.belongs_to :party, index: true, foreign_key: true
      t.belongs_to :birthplace, index: true, foreign_key: true
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
