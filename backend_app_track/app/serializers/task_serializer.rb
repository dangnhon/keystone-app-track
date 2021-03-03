class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task, :completed, :priority 
  has_one :job
  
  # def job 
  #   object.job
  # end
end
