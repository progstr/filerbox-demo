class Boxfile < ActiveRecord::Base
  has_file :file, FileUploader
end
