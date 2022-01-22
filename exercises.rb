arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 1. Print all
arr.each { |x| puts x }

# 2. Print numbers > 5
arr.each do |x|
  puts x if x > 5
end

# 3. Extract odd numbers to a new array
odd = arr.select { |x| x.odd? }
p odd

# 4. Append 11 to the end. Prepend 0 to the beginning.
arr.push(11) # Also arr << 11
arr.unshift(0)
p arr

# 5. Remove 11. Append 3.
arr.delete(11) # Also arr.pop
arr << 3
p arr

# 6. Remove duplicates
arr.uniq!
p arr

# 7. Array is an ordered list of values accessed using an index.
#    Hash is unordered and has a key associated with each value.
#    The keys are used to access the value.

# 8. Create a hash using both styles
hash = { key: 'value' }
hash2 = { key: 'value' }
hash3 = {}
hash3[:key] = 'value'
p hash
p hash2
p hash3

# 9. hash
h = { a: 1, b: 2, c: 3, d: 4 }

# Get the value of key `:b`.
puts h[:b]
# Add to this hash the key:value pair `{e:5}`
h[:e] = 5
puts h
# Remove all key:value pairs whose value is less than 3.5
h.delete_if { |_k, v| v < 3.5 }
puts h

# 10.
# Hash keys and values can be any type of object.
h = { a: [1] }
puts h
# An array can contain any type of object.
a = [{ a: [1] }, { b: [2] }]
p a

# 11.
contact_data = [['joe@email.com', '123 Main st.', '555-123-4567'],
                ['sally@email.com', '404 Not Found Dr.', '123-234-3454']]

contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }

def copy_contact(_name, contact_data, data_index)
  c = {}
  c[:email] = contact_data[data_index][0]
  c[:address] = contact_data[data_index][1]
  c[:phone] = contact_data[data_index][2]
  c
end
contacts['Joe Smith'] = copy_contact('Joe Smith', contact_data, 0)
contacts['Sally Johnson'] = copy_contact('Sally Johnson', contact_data, 1)
puts contacts

# 12.
puts "Email Joe at #{contacts['Joe Smith'][:email]}"
puts "Call Sally at #{contacts['Sally Johnson'][:phone]}"

# 13.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |e| e.start_with? 's' }
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |e| e.start_with?('s', 'w') }
p arr

# 14.
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
p a.map { |str| str.split(' ') }.flatten

# 15.
hash1 = { shoes: 'nike', 'hat' => 'adidas', :hoodie => true }
hash2 = { 'hat' => 'adidas', :shoes => 'nike', hoodie: true }

if hash1 == hash2
  puts 'These hashes are the same!'
else
  puts 'These hashes are not the same!'
end
# shoes and hoodie are symbol keys. hat is a string key.
# Both hashes have the same keys (although in different order).
# For each key, the values are the same.
# hash1 == hash2.
# Output "These hashes are the same!"

# 16.
contact_data = [['joe@email.com', '123 Main st.', '555-123-4567'],
                ['sally@email.com', '404 Not Found Dr.', '123-234-3454']]

contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }

# [:email, :address, :phone].each_with_index do |data, idx|
#   contacts["Joe Smith"][data] = contact_data[0][idx]
#   contacts["Sally Johnson"][data] = contact_data[1][idx]
# end

fields = %i[email address phone]
idx = 0
contacts.each_with_index do |(_name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
  idx += 1
end

p contacts
