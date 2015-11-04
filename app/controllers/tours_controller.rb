class ToursController < ApplicationController

  def index
    if params[:search]
      @tours = Tour.search(params[:search]).order("created_at DESC")
      flash[:success] = "Search results for: '#{params[:search]}'" if !@tours.empty?
      flash[:danger] = "Sorry! No matching results for: '#{params[:search]}'. Showing all tours." if @tours.empty?
      @tours = Tour.all.order("created_at DESC") if @tours.empty?
    else
      @tours = Tour.all.order("created_at DESC")
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end
end
