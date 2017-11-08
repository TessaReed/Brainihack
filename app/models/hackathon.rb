class Hackathon < ApplicationRecord
  has_many :teams
  belongs_to :profile
  include ImageUploader[:avatar]
  geocoded_by :address
  after_validation :geocode
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
