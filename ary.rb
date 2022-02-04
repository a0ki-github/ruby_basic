data = [["らんてくん", 98],["カンノ", 23],["ファラオ", 57],["だいそん", 84],["ひさじゅ", 100]]
results = data.sort_by{|result| result[1]}.reverse

results.each_with_index do |result, index|
  puts "#{index + 1}位：#{result[0]} #{result[1]}点"
end

