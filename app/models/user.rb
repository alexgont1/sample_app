class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 29 }
  validates :email, presence: true, length: { maximum: 41 }
end
