class PicturesController < ApplicationController
  def show
  	@id = params[:id]
	@picture = Picture.find(@id)
	@picture_url = @picture.source
	@caption = @picture.caption
  end

  def index
  	@pictures = Picture.all
  end

  def new
  end

  def create
  	newPic = Picture.new
  	newPic.caption = params[:caption]
  	newPic.source = params[:source]
  	newPic.save
  end

  def destroy
  	@id = params[:id]
  	@picture = Picture.find(@id)
	@picture_url = @picture.source
	@caption = @picture.caption
  end

  def edit
  	@id = params[:id]
	@picture = Picture.find(@id)
	@picture_url = @picture.source
	@caption = @picture.caption
  end

  def update
  	@id = params[:id]
  	pic = Picture.find(@id)
  	pic.caption = params[:caption]
  	pic.source = params[:source]
  	pic.save
  end
end
