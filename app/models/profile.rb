class Profile < ActiveRecord::Base
  belongs_to :user

  mount_uploader :profile_pic, ProfilePicUploader 
  #we are uploading an object into our profile, "ProfilePicUploader"is the class name
end
