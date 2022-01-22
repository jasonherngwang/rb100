a = [1, "a", [3, "b"]]
a.each_with_index do |val, index|
  puts "Index #{index} contains #{val}"
end
