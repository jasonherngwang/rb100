def between0_100

  print "Enter a number between 0 and 100: "
  num = gets.chomp.to_i
  
  while num < 0
    puts "#{num} is negative."
    print "Enter a number between 0 and 100: "
    num = gets.chomp.to_i
  end

  puts num <= 50 ? "Less than or equal to 50" : "Greater than 50"

end

between0_100
