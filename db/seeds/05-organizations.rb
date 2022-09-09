orgs = [
  ["teams", "thing"], ["experiences", "thing"], ["organizations", "thing"],
  ["companies", "thing"], ["cities", "thing"], ["natives", "person"],
  ["collectives", "thing"], ["bodies", "thing"], ["clients", "person"],
  ["customers", "person"], ["governments", "thing"], ["groups", "thing"],
  ["non-profits", "thing"], ["dreamers", "person"], ["drivers", "person"],
  ["innovators", "person"], ["riders on the storm", "person"],
  ["partners", "person"], ["game-changers", "person"],
  ["rule-breakers", "person"], ["subscribers", "person"],
  ["decision-makers", "person"], ["followers", "person"], ["fans", "person"],
  ["followers and fans", "person"], ["creators", "person"],
  ["marketers", "person"], ["agencies", "thing"], ["change-agents", "thing"],
  ["realtors", "person"], ["the C-Suite", "person"], ["institutions", "thing"],
  ["thought-leaders", "person"], ["leadership", "thing"],
  ["milkmaids", "person"], ["luminaries", "person"], ["groups", "person"],
  ["everyone", "person"], ["literally everyone", "person"],
  ["Edith Head", "person"], ["Helen Girly Brown", "person"],
  ["people", "person"], ["parents", "person"], ["children", "person"],
  ["students", "person"], ["teachers", "person"], ["owners", "person"],
  ["customers", "person"], ["clients", "person"], ["gatekeepers", "person"],
  ["performers", "person"], ["adversaries", "person"], ["the gram", "thing"],
  ["TikTokers", "person"], ["cowboys", "person"],
  ["cowboys and astronauts", "person"], ["astronauts", "person"],
  ["cats", "person"], ["Millenials", "person"], ["GenXers", "person"],
  ["Boomers", "person"], ["bosses", "person"], ["capitalists", "person"],
  ["communists", "person"], ["politicians", "person"], ["investors", "person"],
  ["venture capitalists", "person"], ["vendors", "person"], ["startups", "thing"],
  ["partygoers", "person"], ["the world", "thing"], ["connections", "thing"]]

orgs.each do |org|
  Organization.create(word: org[0], conjunction: org[1])
end

puts 'ORGS! ORGS! ORGS!'
