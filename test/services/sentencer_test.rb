# frozen_string_literal: true

require "test_helper"

class SentencerTest < ActiveSupport::TestCase
  test 'should call' do
    assert_not_nil Sentencer.new.call
  end

  test 'should select company' do
    assert Company.pluck(:word).include?(Sentencer.new.company)
  end

  test 'should select verb' do
    assert Verb.pluck(:word).include?(Sentencer.new.verb)
  end

  test 'should select noun' do
    assert Noun.pluck(:word).include?(Sentencer.new.noun)
  end

  test 'should select adjective' do
    assert Adjective.pluck(:word).include?(Sentencer.new.adj)
  end

  test 'should select org with conjunction' do
    phrase = Sentencer.new.org_and_conjunction
    orgs = Organization.pluck(:word, :conjunction)
    phrases = orgs.map { |org| "#{org[0]} #{org[1] == 'thing' ? 'that' : 'who'}"}
    conjunctions = Organization.pluck(:conjunction)
    assert phrases.include?(phrase)
    assert Organization.pluck(:word).include?(phrase.split.first)
    assert ['that', 'who'].include?(phrase.split.last)
  end

  test 'should select predicate' do
    verb = Sentencer.new.predicate
    refute_equal 'carf', verb
    assert Verb.pluck(:word).include?(Sentencer.new.predicate)
  end

  test 'should select direct object' do
    assert Noun.pluck(:word).include?(Sentencer.new.obj)
  end
end
