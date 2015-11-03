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

  def edit
  end

  def destroy
  end

private
  def tour_params
  params.require(:tour).permit( :name, :description, :language, :image)
 end
end
