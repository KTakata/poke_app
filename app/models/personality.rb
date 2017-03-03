class Personality < ActiveRecord::Base
  has_many :master1, class_name: 'Master', foreign_key: 'characteristic1_id'
  has_many :master2, class_name: 'Master', foreign_key: 'characteristic2_id'
  has_many :master3, class_name: 'Master', foreign_key: 'characteristic3_id'
end
