class Bounty < ActiveRecord::Base
    has_many :bounty_joiners
    has_many :bounty_hunters, through: :bounty_joiners
  end