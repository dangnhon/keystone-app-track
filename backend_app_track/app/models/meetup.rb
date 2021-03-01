class Meetup < ApplicationRecord
    has_many :meetup_contacts, dependent: :destroy
    belongs_to :user 
end
