names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
names[3] = 'jody'
names[names.index("margaret")] = "jody"
names.map! { |name| name == "margaret" ? "jody" : name }

# Error. names is not a hash. Cannot turn 'margaret' into an array index.

