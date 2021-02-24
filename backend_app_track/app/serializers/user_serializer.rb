class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :jobs
  has_many :tasks, through: :jobs 
  has_many :meetups
  has_many :meetup_contacts, through: :meetups
end
