class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  # protected
  # def after_sign_in_path_for(resource)
  #   # resource is a class init of User (instance of a user)
  #   if resource.profile == nil
  #     # redirect_to profile/new
  #     new_profile_path
  #   end
  #     profile_path resource
  # end

end
