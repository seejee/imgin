class Image < ActiveRecord::Base
  validates_presence_of :decription, :filename
  belongs_to :user
  mount_uploader :filename, ImageUploader
end
