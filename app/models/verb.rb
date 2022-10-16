# frozen_string_literal: true

class Verb < ApplicationRecord
  include Sorted
  include PgSearch::Model

  pg_search_scope :search_by_verb_info,
                  against: %i[word],
                  using: {
                    tsearch: {
                      prefix: true,
                      any_word: true,
                      dictionary: 'english'
                    }
                  }
end
