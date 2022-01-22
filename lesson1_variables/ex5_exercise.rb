x = 0
3.times do
  x += 1
end
puts x
# Outputs 3. Inner scope can access variables initialized in outer scope.

# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x
# Error; x is undefined local variable or method. 
#   Outer scope cannot access x initialized in block.