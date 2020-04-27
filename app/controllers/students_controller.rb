class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @ns = Student.new
    @ns.first_name = params["first_name"]
    @ns.last_name = params["last_name"]
    @ns.save
    redirect_to student_path(@ns)
  end

end
