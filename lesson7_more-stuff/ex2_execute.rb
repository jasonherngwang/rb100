def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
# & converts the passed block into a proc.
# Prints nothing since the proc is not called.
# Method returns a proc.