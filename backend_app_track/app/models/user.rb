class User < ApplicationRecord
    has_many :jobs, dependent: :destroy
    has_many :tasks, through: :jobs 
    has_many :meetups, dependent: :destroy 
    has_many :meetup_contacts, through: :meetups
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
end
