array = [*1..ARGV[0].to_i]
p array.combination(2).to_a

# Array#combinationを使わない場合
result = []
array.each_with_index do |_, index|
  (array.count - index - 1).times do |n|
    result << [array[index], array[index + n + 1]]
  end
end

p result
