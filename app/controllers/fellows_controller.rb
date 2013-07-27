class FellowsController < ApplicationController

  def index

  end

  def new
    @fellow = Fellow.new
  end

  def create
    @fellow = Fellow.new(params[:id])
    if @fellow.save
      flash[:notice] = "Fellow has been added."
      redirect_to @fellow
    else
    end
  end

  def show
    @fellow = Fellow.find(params[:id])
  end
end
