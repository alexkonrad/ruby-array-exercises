require 'rspec'
require 'array_exercises'

describe Array do
  subject(:array) { [1, 3, 3, -3, 2, -1, 5, -2, 0] }

  describe "#my_uniq" do
    let(:array_uniq) { array.uniq }

    it "should return the unique values of an array with duplicate elements" do
      expect(array.my_uniq).to eq(array_uniq)
    end
  end

  describe "#two_sum" do
    let(:zero_sum_pairs) { [[0, 5], [1, 3], [2, 3], [4, 7]] }

    it "should not return any pairs of zero in the same index" do
      expect(array.two_sum).to_not include([8,8])
    end

    it "should return all the indices of all the elements that sum to zero" do
      expect(array.two_sum).to match_array(zero_sum_pairs)
    end
  end

  describe "#my_transpose" do
    let(:two_dim_array)   { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
    let(:array_transpose) { [[0, 3, 6], [1, 4, 7], [2, 5, 8]] }
   
    it "should return the transpose of a given two-dimensional array" do
      expect(two_dim_array.my_transpose).to eq(array_transpose)
    end
  end

  describe "#my_each" do
    let(:arr) { [] }
    let(:prc) { Proc.new { |i| arr << i*2 } }
    let(:doubled_array) { array.map { |i| i*2 } }
    
    it "should call a passed block on each element of an array" do
      array.my_each(&prc)
      expect(arr).to eq(doubled_array)
    end
  end
end
