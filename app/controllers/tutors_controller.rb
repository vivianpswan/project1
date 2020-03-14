class TutorsController < ApplicationController
  before_action :check_for_login

  def new
    @tutor = Tutor.new
  end

  def create
    tutor = Tutor.create tutor_params
    @current_user.tutors << tutor # Association

    redirect_to root_path # IRL this would be: redirect_to tutor
  end

  private
  def tutor_params
    params.require(:tutor).permit(:title)
  end


  def index
  end

  def show
  end

  def edit
  end


end
