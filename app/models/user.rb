class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_and_belongs_to_many :homeworks
  has_many :registries, through: :homeworks
  
  def completed_tasks(user)
    user.registries.where(carried_out: true, user_id: user.id)
  end
end
