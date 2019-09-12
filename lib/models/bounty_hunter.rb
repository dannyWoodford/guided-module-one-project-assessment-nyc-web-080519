
class BountyHunter < ActiveRecord::Base
    has_many :bounty_joiners
    has_many :bounties, through: :bounty_joiners


#    def self.highest_net_worth
#         self.maximum(:net_worth)
#    end



end

  
