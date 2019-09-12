class BountyJoiner < ActiveRecord::Base
    belongs_to :bounty_hunter
    belongs_to :bounty

    # def create
    # end
  end

