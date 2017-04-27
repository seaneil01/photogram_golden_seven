class PhotosController < ApplicationController
  def index
    @list_of_all_my_photos = Photo.all
    render("photos/index.html.erb")
  end

  def new_form
    render("photos/new_form.html.erb")
  end

  def create_row
    url = params[:source]
    cap = params[:caption]
    new_photo = Photo.new
    new_photo.source = url
    new_photo.caption = cap
    new_photo.save
    # render("photos/create_row.html.erb")
    redirect_to("/photos")
  end

  def show
    photo_number = params[:id].to_i
    @user_photo = Photo.find(photo_number)
    render("photos/show.html.erb")
  end

  def edit_form
    photo_number = params[:id].to_i
    @user_photo = Photo.find(photo_number)
    render("photos/edit_form.html.erb")
  end

  def update_row
    photo_number = params[:id].to_i
    url = params[:source]
    cap = params[:caption]
    edit_photo = Photo.find(photo_number)
    edit_photo.source = url
    edit_photo.caption = cap
    edit_photo.save

    redirect_to("/photos")
  end

  def destroy_row

    photo_number = params[:id].to_i
    del_photo = Photo.find(photo_number)
    del_photo.destroy
    redirect_to("/photos")
  end

end
