class User < ApplicationRecord
    has_secure_password
    
    validates :name, presence: true
    validates :password, presence: true, length: {minimum: 6}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, format: {with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    validates :birthDate, presence: true
    validates :sex, presence: true

    before_save { self.email = email.downcase }


   
end