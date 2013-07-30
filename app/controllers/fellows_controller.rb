class FellowsController < ApplicationController

  def index
    @fellows = Fellow.all
  end

  def new
    @fellow = Fellow.new
  end

  def create
    @fellow = Fellow.new(params[:fellow])
    if @fellow.save
      flash[:notice] = "Fellow has been added."
      redirect_to @fellow
    else
      flash[:alert] = "Fellow has not been added."
      render action: "new"
    end
  end

  def show
    @fellow = Fellow.find(params[:id])
  end
end
