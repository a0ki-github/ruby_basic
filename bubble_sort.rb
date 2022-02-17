ARGV.count.times do
  (ARGV.count - 1).times do |n|
    if ARGV[n] > ARGV[n + 1]
      ARGV[n], ARGV[n + 1] = ARGV[n + 1], ARGV[n]
    end
  end
end

p ARGV
