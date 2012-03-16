# app/controllers/students_controller.rb
class StudentsController < ApplicationController
  def index
    @students = Student.all
    respond_to do |format|
      format.json {render :json =>@students}
    end
  end
  def createStudent
    fn = params[:first_name]
    ln = params[:last_name]
    maj = params[:major]
    @student = Student.new(:first_name => fn, :last_name => ln, :major => maj)
    @student.save
  end
  def selectStudent
    @students = Student.all
  end
  def deleteStudent
    id = params[:student_id]
    @student = Student.find_by_id(id)
    if @student.delete
      redirect_to :controller => "students", :action => "selectStudent"
    end
  end
  def editStudent
    id = params[:student_id]
    fn = params[:first_name]
    ln = params[:last_name]
    maj = params[:major]
    @student = Student.update(id,{:first_name => fn, :last_name => ln, :major => maj})
  end
end
