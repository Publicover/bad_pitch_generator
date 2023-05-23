# frozen_string_literal: true

class Sentencer
  def call
    "We are #{article_and_noun(company)} who #{verb} #{noun} for #{adj}
    #{org_and_conjunction} want to #{predicate} #{obj}."
  end

  def company
    Company.all.sample.word
  end

  def article_and_noun(word)
    word[0].match?(/a|e|i|o|u/) ? "an #{word}" : "a #{word}"
  end

  def verb
    Verb.all.sample.word
  end

  def noun
    Noun.all.sample.word
  end

  def adj
    Adjective.all.sample.word
  end

  def org_and_conjunction
    org = Organization.all.sample
    "#{org.word} #{org.thing? ? 'that' : 'who'}"
  end

  def predicate
    verb = Verb.all.sample.word.singularize
    verb == 'carf' ? 'carve' : verb
  end

  def obj
    Noun.all.sample.word
  end
end
