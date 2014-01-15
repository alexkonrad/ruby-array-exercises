class Array

  def my_uniq
    [].tap do |arr|
      seen = []
      self.each do |elem| 
        arr << elem unless seen.include?(elem)
        seen << elem
      end
    end
  end

  def two_sum
    [].tap do |arr|
      (0...self.size).each do |i|
        (i...self.size).each do |j|
          arr << [i, j] if self[i] == -self[j] 
        end
      end
    end
  end

  def my_transpose
    (0...self.size).map { |i| (0...self.size).map { |j| self[j][i] } }
  end
end
