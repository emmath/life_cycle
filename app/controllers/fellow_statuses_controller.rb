class FellowStatusesController < ApplicationController

def index
    @fellow_statuses = Fellow_status.all
  end

  def new
    @fellow_status = Fellow_status.new
  end

  def create
    @fellow_status = Fellow_status.new(params[:fellow_status])
    if @fellow_status.save
      flash[:notice] = "Fellow Status has been added."
      redirect_to @fellow_status
    else
      flash[:alert] = "Fellow Status has not been added."
      render action: "new"
    end
  end

  def show
    @fellow_status = Fellow_status.find(params[:id])
  end

  def edit
    @fellow_status = Fellow_status.find(params[:id])
  end

  def update
    @fellow_status = Fellow_status.find(params[:id])
    if @fellow_status.update_attributes(params[:fellow_status])
      flash[:notice] = "Fellow Status has been updated."
      redirect_to @fellow_status
    else
      flash[:alert] = "Fellow Status has not been updated."
      render action: "edit"
    end
  end
end
