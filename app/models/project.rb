class Project < ApplicationRecord
  has_one_attached :banner
  has_many_attached :photos
  has_many :project_services, dependent: :destroy
  has_many :services, through: :project_services
  validates :banner, attached: true

  def affiliates
    [location, client, architect, contractor]
  end

  def affiliates_hash
    { location: location, client: client, architect: architect, contractor: contractor}
  end

  def services_sentence
    names = services.map {|s| s.title}
    names.join(" | ")
  end
end
