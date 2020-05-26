class Service < ApplicationRecord
  has_rich_text :content
  has_one_attached :photo
  has_many :project_services
  has_many :projects, through: :project_services
end
