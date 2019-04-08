class Homework < ApplicationRecord
  has_many :registries
  has_and_belongs_to_many :users
end
