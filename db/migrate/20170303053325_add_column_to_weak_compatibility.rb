class AddColumnToWeakCompatibility < ActiveRecord::Migration
  def change
    add_column :weak_compatibilities, :is_zero_damage, :boolean
  end
end
