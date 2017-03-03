class Party < ActiveRecord::Base
  belongs_to :user
  belongs_to :battle_type
end
