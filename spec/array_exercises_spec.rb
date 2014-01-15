require 'rspec'
require 'array_exercises'

describe Array do
  let(:empty_array)     { [] }
  let(:array)           { [1, 3, 3, -3, 2, -1, 5, -2] }
  let(:uniq_array)      { [1, 3, -3, 2, -1, 5, -2] }
  let(:zero_sum_pairs)  { [[0, 5], [1, 3], [2, 3], [4, 7]] }
  let(:two_dim_array)   { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
  let(:array_transpose) { [[0, 3, 6], [1, 4, 7], [2, 5, 8]] }

  describe "#my_uniq" do
    it "should return an empty array when given one" do
      expect(empty_array.my_uniq).to eq(empty_array)
    end 

    it "should return the unique values of an array with duplicate elements" do
      expect(array.my_uniq).to eq(uniq_array)
    end
  end

  describe "#two_sum" do
    it "should return an empty array when given an empty array" do
      expect(empty_array.two_sum).to eq(empty_array)
    end

    it "should return all the indices of all the elements that sum to zero" do
      expect(array.two_sum).to match_array(zero_sum_pairs)
    end
  end

  describe "#my_transpose" do
    it "should return an empty array when given an empty array" do
      expect(empty_array.my_transpose).to eq(empty_array)
    end

    it "should return the transpose of a given two-dimensional array" do
      expect(two_dim_array.my_transpose).to eq(array_transpose)
    end
  end
end
