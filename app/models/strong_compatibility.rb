class StrongCompatibility < ActiveRecord::Base
  belongs_to :strong_type, class_name: 'Type', :foreign_key => 'type1_id'
  belongs_to :target_type, class_name: 'Type', :foreign_key => 'type2_id'
end
