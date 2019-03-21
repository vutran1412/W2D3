require "tdd"
require "rspec"
RSpec.describe Array do
    subject(:arr) { [1,2,3,1,2,3] }
    describe "#my_uniq" do
        it "returns a new array with unique values" do
            expect(arr.my_uniq).to eq([1,2,3])
        end

        it "does not use #uniq" do
            expect(arr).to_not receive(:uniq)
        end
    end

    describe "#two_sum" do
        let(:arr) { [5, -5, 4] }
        it "returns a new array with indexes that add up to 0" do
            expect(arr.two_sum).to eq([[0, 1]])
        end

        it "returns only one pair in order of index" do
            expect(arr.two_sum).to_not eq([[0, 1], [1, 0]])
        end
    end
end


describe "#my_transpose" do
    let(:arr) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }
    it "transposes rows into columns" do
        expect(my_transpose(arr)).to eq([[0,3,6],[1,4,7],[2,5,8]])
    end

    it "does not use #transpose" do
        expect(arr).to_not receive(:transpose)
    end
end

describe "#stock_picker" do
    let(:arr) { (1..5).to_a }

    it "it takes a stock_picker array and chooses when to buy and when to sell" do
        expect(stock_picker(arr)).to eq([0, 4])
    end
end




    

