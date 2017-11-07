# require "shrine"
# require "shrine/storage/file_system"
#
# Shrine.plugin :activerecord
# Shrine.plugin :logging, logger: Rails.logger
#
# Shrine.storages = {
#   cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
#   store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store"),
# }

require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: "dshckrmfg",
  api_key:    "141163464621466",
  api_secret: "QEQmy8HGzqollGsYcX3RlD-Bgfc",
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}
