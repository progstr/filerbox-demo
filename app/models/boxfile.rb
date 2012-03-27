class Boxfile < ActiveRecord::Base
  has_file :file, FileUploader
  validates_presence_of :file
end
