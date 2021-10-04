class Post < ApplicationRecord
  belongs_to :user
  validates :user, presence: true, uniqueness: true
  has_one_attached :photo, dependent: :destroy
end
