class PartyMember < ActiveRecord::Base
  belongs_to :party
  belongs_to :item
end
