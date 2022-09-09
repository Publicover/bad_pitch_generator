# frozen_string_literal: true

module Sorted
  extend ActiveSupport::Concern

  included do
    scope :case_insensitive_order, -> { order("LOWER(word)") }
  end
end
