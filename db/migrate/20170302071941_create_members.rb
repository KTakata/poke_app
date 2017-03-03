class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :level
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :master, index: true, foreign_key: true
      t.string :nick_name
      t.integer :hp
      t.integer :attack
      t.integer :block
      t.integer :contact
      t.integer :deffence
      t.integer :speed
      t.integer :original_hp
      t.integer :original_attack
      t.integer :original_block
      t.integer :original_contact
      t.integer :original_deffence
      t.integer :original_speed
      t.belongs_to :personality, index: true, foreign_key: true
      t.boolean :is_other_color
      t.text :remaks
      t.belongs_to :characteristic, index: true, foreign_key: true
      t.integer :gendar
      t.decimal :fif_h
      t.decimal :fif_a
      t.decimal :fif_b
      t.decimal :fif_c
      t.decimal :fif_d
      t.decimal :fif_s
      t.boolean :is_status_lock
      t.boolean :is_agenda
      t.boolean :crown_h
      t.boolean :crown_a
      t.boolean :crown_b
      t.boolean :crown_c
      t.boolean :crown_d
      t.boolean :crown_s
      t.belongs_to :birthplace, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
