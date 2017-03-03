class Type < ActiveRecord::Base
  has_many :weak_compatibilities, class_name: 'WeakCompatibility', foreign_key: 'type1_id'
  has_many :own_compatibilities, class_name: 'WeakCompatibility', foreign_key: 'type2_id'
  has_many :strong_compatibilities, class_name: 'StrongCompatibility', foreign_key: 'type1_id'
  has_many :target_compatibilities, class_name: 'StrongCompatibility', foreign_key: 'type2_id'
end
