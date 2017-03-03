class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.text :remarks

      t.timestamps null: false
    end
  end
end
