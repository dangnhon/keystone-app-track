class Meetup < ApplicationRecord
    has_many :meetup_contacts 
    belongs_to :user 
end
