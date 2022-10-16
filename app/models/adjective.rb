# frozen_string_literal: true

class Adjective < ApplicationRecord
  include Sorted
  include PgSearch::Model

  pg_search_scope :search_by_adjective_info,
                  against: %i[word],
                  using: {
                    tsearch: {
                      prefix: true,
                      any_word: true,
                      dictionary: 'english'
                    }
                  }
end
