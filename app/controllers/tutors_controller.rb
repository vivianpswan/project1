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

  def edit
    @tutor = Tutor.find params[:id]
  end

  def update
    tutor = Tutor.find params[:id]
    tutor.update tutor_params
    redirect_to tutor
  end

  def show
    @tutor = Tutor.find params[:id]
  end

    def destroy
      tutor = Tutor.find params[:id]
      tutor.destroy
      redirect_to tutors_path
    end


  private
  def tutor_params
    params.require(:tutor).permit(:name, :email, :password, :password_confirmation, :student_id, :stage, :subject)
  end

  
end
