require 'auction'

describe Auction do
  
  let(:my_auction) {Auction.new("Derek Jeter Rookie Card", 998)}
  
  describe "#test" do
    context "when given an item to auction" do
      it "should test the auction out" do
        puts my_auction.inspect
        my_auction.new_bid 10
        puts my_auction.inspect
        my_auction.start
        my_auction.new_bid 20
        puts my_auction.inspect
        my_auction.new_bid 15
        puts my_auction.inspect
        my_auction.new_bid 800
        puts my_auction.inspect
        puts my_auction.sold?
        my_auction.new_bid 1001
        my_auction.call
        puts my_auction.inspect
        puts my_auction.sold?
      end
    end
  end
  
end