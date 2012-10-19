class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @count = Picture.count
  end
  
  def new
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    
    redirect_to '/pictures'
  end
  
  def show
    # x = params[:id].to_i
    # @photo = pictures[x-1]
    # @size = params[:size]
    # @color = params[:color]
  end
  
  def delete
    p = Picture.find_by_id(params[:id])
    p.delete
    p.save
    
    redirect_to '/pictures'
  end
  
  def home
    @greeting = "hey"
  end
    
end
