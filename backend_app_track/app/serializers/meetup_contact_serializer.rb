class MeetupContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :email
  has_one :meetup 
end
