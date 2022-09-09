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
