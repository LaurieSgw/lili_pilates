class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: %i[destroy]


  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def course_params
    params.require(:course).permit(:date, :available_places)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
