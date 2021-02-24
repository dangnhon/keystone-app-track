class JobSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :job_title, :date, :salary, :status, :note, :contact_number
  has_many :tasks 
  has_one :user
end
