def greeting(name, options = {}, state)
  if options.empty?
    puts "Hi #{name} in #{state}"
  else
    puts "Hi #{name} from #{options[:city]}, #{state} age #{options[:age]}"
  end
end

greeting("Jason", {1 => 1}, "CA")
greeting("Jason", {city: "LA", age: 33}, "CA")