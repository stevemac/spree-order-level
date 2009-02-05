require File.dirname(__FILE__) + '/../spec_helper'

describe OrderLevel do
  before(:each) do
    @order_level = OrderLevel.new
  end

  it "should be valid" do
    @order_level.should be_valid
  end
end
