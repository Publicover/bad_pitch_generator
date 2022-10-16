# frozen_string_literal: true

class Organization < ApplicationRecord
  include Sorted
  include PgSearch::Model

  pg_search_scope :search_by_org_info,
                  against: %i[word],
                  using: {
                    tsearch: {
                      prefix: true,
                      any_word: true,
                      dictionary: 'english'
                    }
                  }

  enum conjunction: {
    thing: 0,
    person: 1
  }
end
