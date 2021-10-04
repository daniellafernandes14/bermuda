class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  validate :name, :email_address, :password, presence: true
end
