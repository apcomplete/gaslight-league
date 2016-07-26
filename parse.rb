require 'csv'

file = File.read("Gaslight League- Initial Stats - Sheet1.csv")
csv = CSV.parse(file, headers: true)

csv.each do |row|
  puts row.to_hash
end

