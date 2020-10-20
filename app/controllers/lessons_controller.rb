class LessonsController < ApplicationController
  before_action :find_lesson, only: [:edit, :update, :show, :destory]
  def index
    @lessons = Lesson.all
  end
  
  def new
    @lessons = Lesson.new
  end
  
  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson), notice: 'Lesson was successfully created.'
    else
      render 'new'
    end
  end

  def show
  end

  def update
      if @lesson.update(lesson_params)
        redirect_to @lesson, notice: 'Lesson was successfully updated.'
      else
        render 'edit'
      end
  end
  
  def destroy
    if @Lesson.destroy
      redirect_to lessons_url, notice: 'Lesson was successfully deleted.'
    else
      redirect_to lessons_path
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :description, :location, :start_lesson, :end_lesson)
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end  
end
