class Profile < ApplicationRecord
  has_many :roles
  include ImageUploader[:avatar]
end
