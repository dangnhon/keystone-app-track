class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task, :completed, :priority
  has_one :job 
end
