hash = {a: "A", b: "B", 1 => 10, 2 => 20}

hash.each_key { |k| puts k }
hash.each_value { |v| puts v }
hash.each { |k, v| puts "#{k}: #{v}" }