class Project < ApplicationRecord
  has_many :images, optional: true
end
