def allcaps(x)
  x.length > 10 ? x.upcase : x
end

puts allcaps("hello")
puts allcaps("hello world")