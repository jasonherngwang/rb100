a = [1, 2, "3", 4]

a.each do |x|
  # puts x + 1
  begin
    puts x + 1
  rescue => e
    puts e.message
  end
end

a.each do |x|
  # puts x + 1
  begin
    puts x + 1
  rescue TypeError => e
    puts e.message
  end
end

a.each do |x|
  # puts x + 1
  begin
    puts x + 1
  rescue ZeroDivisionError => e
    puts e.message
  end
end