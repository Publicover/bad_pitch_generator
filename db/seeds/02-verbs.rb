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
