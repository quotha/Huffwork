require 'huffwork'

describe Huffwork do
  
  let(:my_huffwork) {Huffwork.new}
  let(:my_array)    {[1,2,3,4,3,2,3,5,8,13]}

  describe "#ordered_indexes" do
    context "when given an array" do
      it "should return the indexes that start ascending sequences" do
        expect(my_huffwork.ordered_indexes(my_array)).to eq([0, 1, 3])
      end
    end
  end
end