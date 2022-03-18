class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:codigo_area])
  end
 
 
  def new 
  @area = Area.new
  end
  
  
  def create
    @area = Area.new(
    params[:codigo_area],
    params[:nombre_area])
    if @area.save 
      redirect_to areas_path
    else 
      render :new 
    end 
    
  end
end
