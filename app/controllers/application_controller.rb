class ApplicationController < ActionController::Base
    before_action :fetch_tutor

    private
    def fetch_tutor
      @current_tutor = Tutor.find_by :id => session[:tutor_id] if session[:tutor_id].present?
      session[:tutor_id] = nil unless @current_tutor.present?
    end
  
    def check_for_login
      redirect_to login_path unless @current_tutor.present?
    end
  
    def check_for_admin
      redirect_to root_path unless @current_tutor.present? && @current_tutor.admin?
    end
end
