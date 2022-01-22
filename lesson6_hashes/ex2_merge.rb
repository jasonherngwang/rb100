hash = {a: "a", b: "b"}
hash2 = {c: "c", d: "d"}

puts hash.merge(hash2)
puts hash
puts hash2

puts hash.merge!(hash2)
puts hash # Has been mutated to the merged hash.
puts hash2