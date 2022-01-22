# def take_proc(proc)
#   [1, 2, 3].each { |x| proc.call(x) }
# end

# proc = Proc.new do |x|
#   puts "Executing proc"
#   puts x
# end

# take_proc(proc)


proc = Proc.new do |x|
  puts x ** 2
end

[1, 2, 3].each &proc