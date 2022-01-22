print "How old are you? "
age = gets.chomp.to_i

for i in [10, 20, 30, 40] do
  puts "In #{i} years you will be:"
  puts age + i 
end