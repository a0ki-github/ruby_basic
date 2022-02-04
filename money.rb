kind_of_money = [10000, 5000, 1000, 500, 100, 50, 10, 5, 1]
payment = ARGV[0].to_i

result = {}
kind_of_money.each do |money|
  how_many_use = payment / money

  result.merge!({money=> how_many_use})
  payment %= money
end

p result.sort.to_h
