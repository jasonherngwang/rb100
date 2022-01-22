def reassign(array)
  array = [0, 1]
end

def append(array)
  array << 1
end

array = [0]
reassign(array)
puts array
append(array)
puts array