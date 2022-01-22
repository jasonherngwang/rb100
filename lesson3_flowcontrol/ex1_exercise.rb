puts (32 * 4) >= 129 # false. 32 * 4 = 128

puts false != !true # false. !true evaluates to false.

puts true == 4 # false. Integers are truthy, but do not equal true. 

puts false == (847 == '874') # true. int is not equal to string; yields false.

=begin
true.
!20 evaluates to false, since integers are truthy.
3rd expression evaluates to true. Other 3 are false.
=end
puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false