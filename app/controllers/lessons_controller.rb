class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_lesson, only: [:edit, :update, :show, :destroy]

  def index
    if params[:query].present?
      @lessons = policy_scope(Lesson).global_search(params[:query])
    else
      @lessons = policy_scope(Lesson)
    end
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
    # the `geocoded` scope filters only lessons with coordinates (latitude & longitude)
    # @lesson = Lesson.where.not(latitude: nil, longitude: nil)
    # @markers = @lesson.geocoded.map do |lesson|
    #   {
    #     lat: lesson.latitude,
    #     lng: lesson.longitude
    #   }
    # end
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
    params.require(:lesson).permit(:title, :description, :address, :lesson_start, :class_day, :lesson_end, :price, :city, :student_limit, :photo)
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end

  #  def lesson_duration
  #   find_lesson
  #   @duration = @lesson.lesson_end - @lesson.lesson_start
  #  end
end
