class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :tasks, :meetup_contacts
  has_many :jobs 
  has_many :meetups
  def tasks 
    ActiveModel::SerializableResource.new(object.tasks,  each_serializer: TaskSerializer)
  end 
  def meetup_contacts 
    ActiveModel::SerializableResource.new(object.meetup_contacts,  each_serializer: MeetupContactSerializer)
  end
end
