class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    photo_index = params['number']
    @photo_source = Photo.find(photo_index).source
    @photo_caption = Photo.find(photo_index).caption

    render("photo.html.erb")
  end

  def edit
    photo_index = params['number']
    @photo_source = Photo.find(photo_index).source
    @photo_caption = Photo.find(photo_index).caption

    render("edit.html.erb")
  end

  def new_form

    render("new.html.erb")
  end

  def destroy

    photo_index = params['number']
    i = Photo.find(photo_index)
    i.destroy
    @list_of_photos = Photo.all
    render("index.html.erb")

  end

end



