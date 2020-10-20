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
      # TODO: Ask Patrick
      # flash[:success] = "Object successfully created"
      redirect_to lesson_path(@lesson), notice: 'Lesson was successfully created.'
    else
      # flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
  end

  def update
      if @lesson.update()
        flash[:success] = "Lesson was successfully updated"
        redirect_to @lesson
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  

  private

  def lesson_params
    # TODO: Add data parametre/
    params.require(:lesson).permit(:title, :description, :location)
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end  
end
