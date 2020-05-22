class Project < ApplicationRecord
  has_one_attached :banner
  has_many_attached :photos
end
