# frozen_string_literal: true

class Sentencer
  def call
    # "We are a #{@company} who #{@verb} #{@noun} for #{@adj} #{@org} #{@conjunction} want to #{@predicate} #{@object}."
    "We are a #{company} who #{verb} #{noun} for #{adj} #{org_and_conjunction} want to #{predicate} #{obj}."
  end

  def company
    Company.all.sample.word
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
    verb = Verb.all.sample.word
    verb == 'carf' ? 'carve' : verb.singularize
  end

  def obj
    Noun.all.sample.word
  end
end
