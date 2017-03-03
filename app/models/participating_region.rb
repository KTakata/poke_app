class ParticipatingRegion < ActiveRecord::Base
  belongs_to :party
  belongs_to :birthplace
end
