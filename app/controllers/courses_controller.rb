class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: %i[new create destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.save
    redirect_to courses_path
  end

  def destroy
    @course.destroy
    redirect_to courses_path, status: :see_other
  end

  private

  def course_params
    params.require(:course).permit(:date, :available_places)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
