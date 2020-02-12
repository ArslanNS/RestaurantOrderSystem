class StudentsController < ApplicationController

  def update()

    studentname = params[:name]
    @student =  Student.find_by name: studentname
    if @student.update(surname: 'Khan')



    end
  end
  helper_method :update
  def edit
    @student = Student.new
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(user_params)
    if @student.save
      redirect_to new_students_path

    end
  end
  def user_params
    params.require(:student).permit(:name, :surname)
  end



end
