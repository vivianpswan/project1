class StudentsController < ApplicationController

def index
    @students = Student.all
    end


def new
    @student = Student.new
   end

def create
    student = Student.create student_params
    @current_tutor.students << student # Association

    redirect_to students_path
end

private
def student_params
  params.require(:student).permit(:name, :image, :age, :stage)
end

end
