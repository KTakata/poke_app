class CreateMemberSkills < ActiveRecord::Migration
  def change
    create_table :member_skills do |t|
      t.belongs_to :skill, index: true, foreign_key: true
      t.belongs_to :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
