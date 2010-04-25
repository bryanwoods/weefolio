class Portfolio < ActiveRecord::Base
  belongs_to :user
  has_many :pieces, :dependent => :destroy
  
  attr_protected :user_id
     
  # Virtual attribute for account tier.
  def account_tier
    self.user.account_tier
  end
  
  # Max number of pieces allowed for each account type.
  def max_pieces
    if self.account_tier == 1
      5
    elsif self.account_tier == 2
      15
    elsif self.account_tier == 3
      25
    end
  end
  
  # Caps the number of pieces that can be added.
  def can_add_more?
    if self.max_pieces == self.pieces.length
      return false
    else
      return true
    end
  end
end
