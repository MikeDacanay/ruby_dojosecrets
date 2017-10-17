class Secret < ActiveRecord::Base
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  validates :content, presence: true	
  belongs_to :user
end
