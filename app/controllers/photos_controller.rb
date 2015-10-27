class PhotosController < ApplicationController
  
  def index
    @list_of_photos = Photo.all
  end

  def show
  	@photo = Photo.find_by({:id => params[:id]})
  end

  def new_form

  end

  def create_row

  	@new = Photo.new 
  	@new.caption = params[:caption]
  	@new.source = params[:source]
  	@new.save

  	redirect_to("http://localhost:3000/photos")

  end

  def destroy

	@delete = Photo.find_by({:id => params[:id]})
	@delete.destroy

  	redirect_to("http://localhost:3000/photos")

  end

  def edit

	@photo = Photo.find_by({:id => params["id"]})

  end

  def update

	@photo = Photo.find_by({:id => params["id"]})
  	@photo.caption = params[:caption]
  	@photo.source = params[:source]
  	@photo.save	

  	redirect_to("http://localhost:3000/photos")

  end

end
