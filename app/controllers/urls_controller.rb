class UrlsController < ApplicationController
  
  def new
    @urlmap = Urlmap.new
  end

  def create
    if @urlmap = Urlmap.create(params[:urlmap])
      redirect_to url_path(@urlmap)
    else
      @error_message = "Your shit's all fucked up"
      render :action => :new
    end
  end

  def show
    @urlmap = Urlmap.find(params[:id])
  end
  
end
