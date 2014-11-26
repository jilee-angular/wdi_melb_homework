class MountainsController < ApplicationController

  def index
    @mountain = Mountain.all
  end

  def new
    @mountain = Mountain.new
  end

  def create
    @mountain = Mountain.new
    @mountain.name = params[:mountain][:name]
    @mountain.image_url = params[:mountain][:image_url]
    @mountain.location = params[:mountain][:location]
    @mountain.details = params[:mountain][:details]

    if @mountain.save
      redirect_to 'mountains'
    else
      render :new
    end
  end

  def show
    @mountain = Mountain.find(params[:id])
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end

  def update
    @mountain = Mountain.find(params[:id])
    @mountain.name = params[:mountain][:name]
    @mountain.image_url = params[:mountain][:image_url]
    @mountain.location = params[:mountain][:location]
    @mountain.details = params[:mountain][:details]

    if @mountain.save
      redirect_to '/mountains'
    else
      render :edit
    end
  end
end
