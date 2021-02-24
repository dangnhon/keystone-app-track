class MeetupSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :date
  has_many :meetup_contacts 
  has_one :user
end
