class User < ApplicationRecord
validates :firstname, :lastname, :email, :phone, :password, presence: true
validates :age, numericality: true
validates :phone, numericality: true
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
validates :email, uniqueness: true
validates :password, length: { in: 6..20 }
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
