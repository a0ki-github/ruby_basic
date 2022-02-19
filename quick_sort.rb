class Array
  def quick_sort
    return self if self.count <= 1

    std = self.shift
    smaller = self.select{|n| n < std}
    bigger = self.select{|n| n >= std}

    return smaller.quick_sort + [std] + bigger.quick_sort
  end
end

p ARGV.quick_sort
