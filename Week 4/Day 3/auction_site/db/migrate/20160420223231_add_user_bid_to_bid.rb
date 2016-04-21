class AddUserBidToBid < ActiveRecord::Migration
  def change
    add_column :bids, :user_bid, :float
  end
end
