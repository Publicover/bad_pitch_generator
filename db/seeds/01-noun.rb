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
