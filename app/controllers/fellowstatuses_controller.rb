class FellowstatusesController < ApplicationController
  before_filter :find_fellows_and_statuses, only: [:show, :edit, :update, :destroy]

  def index
    @fellowstatuses = Fellowstatus.all

  end

def new
    #@fellow = Fellow.new(params[:fellow])
    #@fellowstatus = @fellow.fellowstatus.build
    @fellowstatus = Fellowstatus.new
  end

  def create

    @fellow = Fellow.find(params[:fellowstatus][:fellow_id])
    @status = Status.find(params[:fellowstatus][:status_id])
    # @fellow.statuses << @status

    @fellowstatus = Fellowstatus.new(fellow_id: @fellow.id, status_id: @status.id)

    #@fellow = Fellow.new(params[:fellow])
    #@fellowstatus = @fellow.fellowstatus.build
    # @fellowstatus = Fellowstatus.build(params[:fellowstatus])
    #@fellowstatus.closed_old

    if @fellowstatus.save
      flash[:notice] = "Fellow Status has been added."
      # redirect_to @fellowstatus
      redirect_to @fellowstatus
    else
     flash[:alert] = "Fellow Status has not been created."
     render action: "new"
    end
  end

  def show
    @fellowstatus = Fellowstatus.find(params[:id])
  end

  def edit
    @fellowstatus = Fellowstatus.find(params[:id])
  end

  def update
    #@fellow = Fellow.new(params[:fellow])
    #@fellowstatus = @fellow.fellowstatus.build
    #@fellowstatus = Fellowstatus.find(params[:id])
    @fellowstatus = Fellowstatus.find(params[:id])
    @fellowstatus.update_attributes(params[:fellowstatus])
        #@fellowstatus.time = Time.now
      #if @fellowstatus.update

      flash[:notice] = "Fellow Status has been updated"
        flash[:notice] = Time.now
        redirect_to @fellowstatus
      #else
       #flash[:alert] = "Fellow Status has not been updated."
        #render action: "edit"
      #end
  end

  def destroy
    @fellowstatus = Fellowstatus.find(params[:id])
    @fellowstatus.destroy
    flash[:notice] = "Fellow Status has been deleted."
    redirect_to fellowstatuses_path
  end

  private
  def find_fellows_and_statuses
    @fellow = Fellow.all
    @status = Status.all
  end
end





