class StudentsController < ApplicationController

  def index
    if params[:name]
    
      render json: Student.find_by(first_name: params[:name])
        
  else
    students = Student.all
    render json: students
  end
  end

  def get_by_id 
   render json: Student.find(params[:id])
  end

  def get_by_name
   byebug
  end

end
