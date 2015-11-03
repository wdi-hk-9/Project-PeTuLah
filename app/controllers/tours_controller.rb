class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new tour_params
    if @tour.save
      flash[:success] = "You have successfully saved a tour!"
      redirect_to tours_path
    else
      flash[:error] = "Invalid input"
      render 'new'
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])
    if @tour.update(tour_params)
      flash[:success] = "Tour is edited!"
      redirect_to tour_path
    else
      flash[:error] = "Tour cannot be saved!"
      render 'new'
    end
  end

  def destroy
  end

private
  def tour_params
  params.require(:tour).permit( :name, :description, :language, :image)
  end

  def set_tour
      @tour = Tour.find(params[:id])
  end

end
