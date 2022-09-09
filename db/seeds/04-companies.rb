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
