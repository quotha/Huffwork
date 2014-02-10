class Auction
  
  attr_accessor :item
  attr_accessor :reserve
  attr_accessor :started
  attr_accessor :called
  attr_accessor :bid
  
  def initialize(item, reserve)
    @item     = item
    @reserve  = reserve
    @started  = false
    @called   = false
    @bid      = 0
  end
  
  def start
    @started = true
  end
  
  def started?
    @started
  end
  
  def new_bid amount
    if started? and amount > @bid
      @bid = amount
    end
  end
  
  def call
    @called = true
  end
  
  def called?
    @called
  end
  
  def sold?
    if called? and @bid > @reserve
      true
    else
      false
    end
  end
  
end