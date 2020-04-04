class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum:255 }
  
  #favorite
  has_many :users
  has_many :likes, through: :favorites, source: :user

end
