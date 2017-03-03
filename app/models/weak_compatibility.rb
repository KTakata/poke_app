class WeakCompatibility < ActiveRecord::Base
  belongs_to :own_type, class_name: 'Type', :foreign_key => 'type1_id'
  belongs_to :target_type, class_name: 'Type', :foreign_key => 'type2_id'
end
