labs = [
  "laboratory",
  "experiment",
  "Pans Labyrinth",
  "elaborate",
  "polar bear"
]

labs.each do |str|
  puts str =~ /lab/ ? str : "No match"
end