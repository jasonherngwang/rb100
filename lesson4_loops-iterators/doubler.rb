def doubler(start)
  puts start
  if start < 100
    doubler(start * 2)
  end
end

doubler(2)