class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user.status == 'pro'
      pro_procedure_requests_path
    else
      documents_path
    end
  end
end
