data = [["らんてくん", 98],["カンノ", 23],["ファラオ", 57],["だいそん", 84],["ひさじゅ", 100]]
results = data.sort_by{|result| result[1]}.reverse

results.each_with_index do |result, index|
  name = result[0]
  points = result[1]

  puts "#{index + 1}位：#{name} #{points}点"
end

