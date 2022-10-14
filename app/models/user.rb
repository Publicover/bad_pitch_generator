# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Sorted
  include PgSearch::Model

  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable

  pg_search_scope :search_by_user_info,
                  against: %i[email first_name],
                  using: {
                    tsearch: {
                      prefix: true,
                      any_word: true,
                      dictionary: 'english'
                    }
                  }
end
