require 'json'

class Auction
  
  attr_accessor :item
  attr_accessor :reserve
  attr_accessor :started
  attr_accessor :called
  attr_accessor :bid
  
  def initialize(args)
    @item     = args[:item]
    @reserve  = args[:reserve]
    @started  = args[:started]  || false
    @called   = args[:called]   || false
    @bid      = args[:bid]      || 0
  end
  
  def status
    {:reserve => reserve, :started => started, :called => called, :bid => bid}
  end
  
  def start
    @started = true
  end
  
  def started?
    started
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
    called
  end
  
  def sold?
    if called? and bid > reserve
      true
    else
      false
    end
  end
  
end