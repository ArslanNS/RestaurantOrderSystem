class ApplicationController < ActionController::Base
  default_form_builder BulmaFormBuilder
  def after_sign_in_path_for(resource)
    dashboard_index_url #your path
  end
end