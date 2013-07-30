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

  def edit
    @fellow = Fellow.find(params[:id])
  end

  def update
    @fellow = Fellow.find(params[:id])
    if @fellow.update_attributes(params[:fellow])
      flash[:notice] = "Fellow has been updated."
      redirect_to @fellow
    else
      flash[:alert] = "Fellow has not been updated."
      render action: "edit"
    end
  end
end
