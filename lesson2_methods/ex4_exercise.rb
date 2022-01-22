def scream(words)
  words = words + "!!!!"
  puts words
  return
  # puts words
end

p scream("Yippeee")
# words gets reassigned to a new object. 
# Nothing is explicitly returned, so return value is nil.
# puts nil is a blank line.