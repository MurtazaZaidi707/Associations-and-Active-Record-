class Author < ApplicationRecord
  has_many :books
  has_one :account
  validates :name, presence: true
end
