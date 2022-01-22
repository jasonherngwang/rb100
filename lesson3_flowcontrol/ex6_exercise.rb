puts (32 * 4) >= "129" # error. Cannot compare integers and strings.
puts 847 == '874' # false
puts '847' < '846' # false. "7" > "6".
puts '847' > '846' # true
puts '847' > '8478' # false. Blank 4th character is smaller than 8.
puts '847' < '8478' # true.