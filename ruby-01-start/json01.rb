
require 'json'

string = '{"triggers":[{"id":"id1","ctime":0},{"id":"id2","ctime":1}],"actions":[{"actionId":"a1"}]}'
triggers = JSON.parse(string)

p triggers
p triggers["triggers"].length
triggers["triggers"].each do |t|
  p t
end

File.open("triggers.json", "w") do |f|
  f.write(triggers.to_json)
end

puts File.read("triggers.json")