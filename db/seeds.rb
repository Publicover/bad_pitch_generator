# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
#   if Rails.env.development?
#     load seed
#   end
# end

nouns = ["shit", "chaos", "complexity", "energy", "collaboration", "synergy",
  "reactions", "problems", "solutions", "ideas", "apathy", "empathy", "sympathy",
  "eagerness", "tenderness", "awareness", "opportunities", "headlines",
  "appreciation", "questions", "uncertainty", "relationships", "reality",
  "the youth", "systems", "patterns", "myths", "anxieties", "appearances",
  "the status quo", "commitment", "consistency", "reliablity", "trust",
  "honesty", "bullshit", "illumination", "obsolence", "tradition", "propriety",
  "impropriety", "maturity", "advancement", "furthering", "indecision",
  "speculation", "revolution", "evolution", "love", "stagnation", "idiocy",
  "maximalism", "minimalism", "innovation", "innovation", "leadership",
  "solutions", "transformation", "genesis", "regeneration", "generation",
  "ideation", "exegesis", "ideation", "brilliance", "compliance", "genius",
  "ferocity", "velocity", "change", "variety", "inspiration",
  "business as usual"]

nouns.each do |noun|
  Noun.create(word: noun)
end

puts 'NOUNS!'

verbs = ["builds", "fosters", "imagines", "creates", "encourages", "deconstructs",
  "leverages", "establishes", "pioneers", "synergizes", "formalizes", "bridges",
  "repairs", "forges", "elevates", "restricts", "engineers", "reimagines",
  "brings structure to", "redistributes", "innovates", "innovates", "innovates",
  "carves", "energizes", "invirgorates", "re-energizes", "re-invigorates",
  "re-imagine", "reverses", "rights", "right-sizes", "designs", "transforms",
  "spearheads", "leads", "develops", "stacks", "strips", "fucks", "unfucks",
  "removes", "reduces", "re-uses", "lowers", "raises", "ignites", "re-ignites",
  "forms", "claims", "gets", "starts", "frames", "jumpstarts", "kickstarts",
  "bolsters", "supports", "minimizes", "cultivate", "farms", "inspires",
  "educates", "informs", "caffeinates", "quenches", "desires", "answers",
  "indicates", "confirms", "establishes", "combats", "speculates", "demands",
  "cleanses", "transforms", "demystifies"]

verbs.each do |verb|
  Verb.create(word: verb)
end

puts 'VERBS!'

adjs = ["the next Uber", "Starbucks", "next-level", "cutting-edge",
  "game-changing", "incendiary", "courageous", "revolutionary", "tired",
  "stagnant", "entrenched", "philanthropic", "human-centered", "innovative",
  "people-driven", "outcome-focused", "socially conscious", "socially aware",
  "pioneering", "entrepreneural", "enterprising", "creative", "traditional",
  "rebellious", "open-minded", "eager", "autocratic", "democratic",
  "conservative", "liberal", "overwrought", "overworked", "overbooked",
  "fatigued", "overstimulated", "empty", "meaningless", "meaningful",
  "distributed", "virtual", "open-ended", "driven", "dedicated", "classic",
  "classical", "heavy", "independent", "fun-loving", "curious", "questioning",
  "customer-centric", "mission-critical", "self-serving", "servant", "servile",
  "service-based", "B2B", "D2C", "product-based", "product-focused", "digital",
  "customer-service-oriented", "international", "global", "basic", "local",
  "civil", "civic", "culinary", "experiential", "health-conscious", "discerning",
  "relentless", "dedicated", "motivated", "show-stopping"]

adjs.each do |adj|
  Adjective.create(word: adj)
end

puts 'ADJECTIVES!'

companies = ["partner", "consulting company", "consortium", "partner",
  "shepard", "guard", "confidant", "rulebreaker", "thought leader",
  "guiding light", "touchstone", "rebel", "maverick", "changemaker",
  "revolutionary", "luminary", "coach", "helper", "maître'd", "conductor",
  "facilitator", "matchmaker", "liaison", "boss bitch", "rodeo clown",
  "gatekeeper", "teacher", "practitioner", "wizard", "mage", "connoisseur",
  "platform", "experience", "leader", "fisher of men"]

companies.each do |company|
  Company.create(word: company)
end

puts 'COMPANIES!'

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

if Rails.env.development?
  puts "Creating admin and user..."

  User.create(email: 'jim@badpitch.com', first_name: 'Jim', password: 'password')
  User.create(email: 'dana@badpitch.com', first_name: 'Dana', password: 'password')
end

puts "Seeds complete."
