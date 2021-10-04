class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo, dependent: :destroy
  validates :user, presence: true, uniqueness: true
end
