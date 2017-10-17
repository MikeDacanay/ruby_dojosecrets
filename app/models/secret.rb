class Secret < ActiveRecord::Base
  has_many :likes, dependent: :destroy
  # has_many :users_liked, through: :likes, source: :user
  validates :content, presence: true	
  belongs_to :user
end
