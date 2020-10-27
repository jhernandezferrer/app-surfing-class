class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_lesson, only: [:edit, :update, :show, :destroy]

  def index
    @lessons = Lesson.all
    @lessons = policy_scope(Lesson)
  end

  def new
    @lesson = Lesson.new
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    authorize @lesson
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
    params.require(:lesson).permit(:title, :description, :location, :start_lesson, :end_lesson, :price)
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end

  # def lesson_duration
  #   find_lesson
  #   @duration = @lesson.end_lesson - @lesson.start_lesson
  # end
end
