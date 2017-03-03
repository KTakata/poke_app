class Member < ActiveRecord::Base
  belongs_to :user
  belongs_to :master
  belongs_to :personality
  belongs_to :characteristic
  belongs_to :birthplace
end
