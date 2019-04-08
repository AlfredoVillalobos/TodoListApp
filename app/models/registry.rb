class Registry < ApplicationRecord
  belongs_to :user
  belongs_to :homework 

  def self.search_registry(user, homework)
    Registry.where(user_id: user.id, homework_id: homework.id).first
  end
end
