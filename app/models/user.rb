class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true, length: {minimum: 3, maximum: 100}
    validates :lname, presence: true, length: {minimum: 3, maximum: 300}
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
    validates :address_1, presence: true, length: {minimum: 3, maximum: 300}
    validates :address_2, presence: true, length: {minimum: 3, maximum: 300}
    validates :city, presence: true, length: {minimum: 2, maximum: 150}
    validates :state, presence: true, length: {minimum: 2, maximum: 150}
    validates :country, presence: true, length: {minimum: 2, maximum: 150}
    validates :pincode, presence: true, length: {minimum: 6, maximum: 10}
    validates :phone, presence: true, length: {minimum: 10, maximum: 15}  
    validates :password, presence: true, length: {minimum: 5, maximum: 30}   
end