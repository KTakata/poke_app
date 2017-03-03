class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :content
      t.belongs_to :party, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
