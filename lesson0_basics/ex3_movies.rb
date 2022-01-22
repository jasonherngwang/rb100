movie_years = {
  "LOTR": 2000,
  "Star Wars": 1985
}

movie_years.each_value { |v| puts v }
puts movie_years[:LOTR]
puts movie_years[:"Star Wars"]