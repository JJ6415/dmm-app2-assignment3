class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, length: {minimum: 2, maximum: 20}, presence: true, uniqueness: true
  validates :introduction, length: {maximum: 50}, presence: true, allow_blank: true
  
  has_many :books, dependent: :destroy
  
  has_one_attached :profile_image
  
end
