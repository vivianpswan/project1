class TutorsController < ApplicationController
  before_action :check_for_login, :only => [:index]

  def index
    @tutors = Tutor.all
  end

  def new
    @tutor = Tutor.new
  end

  def create
    @tutor = Tutor.new tutor_params
    if @tutor.save
      session[:tutor_id] = @tutor.id
      redirect_to tutors_path
    else
      render :new
    end
  end
  
    def show
    end
  
    def edit
    end
  

  private
  def tutor_params
    params.require(:tutor).permit(:email, :password, :password_confirmation)
  end

  
end
