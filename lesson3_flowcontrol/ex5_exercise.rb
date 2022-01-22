=begin

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

=end

# Method is missing an 'end` term. The 'end' is matched to the if..else even
#   though it is at the lowest indent level. Ruby does not care about 
#   whitespace.


def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)