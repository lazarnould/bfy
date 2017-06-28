class Image < ApplicationRecord
  belongs_to :project, optional: true

  mount_uploader :photo, PhotoUploader
end
