class Profile < ApplicationRecord
  has_many :roles
  belongs_to :user
  include ImageUploader[:avatar]
end
