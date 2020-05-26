class Project < ApplicationRecord
  has_one_attached :banner
  has_many_attached :photos
  has_many :project_services
  has_many :services, through: :project_services
end
