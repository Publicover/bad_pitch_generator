# frozen_string_literal: true

class Organization < ApplicationRecord
  include Sorted

  enum conjunction: {
    thing: 0,
    person: 1
  }
end
