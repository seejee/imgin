class Image < ActiveRecord::Base
  validates_presence_of :description, :file
  belongs_to :user
  mount_uploader :file, ImageUploader
end
