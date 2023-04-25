class PhotosController < ApplicationController

  def index
    matching_photos = Photo.all

    @list_of_photos = matching_photos.order({ :created_at => :desc })

    render({ :template => "photo_templates/index.html.erb" })
  end

  def photo_details
    @url_photo_id = params.fetch("an_id")
    @the_photo_id = Photo.where({ :id => @url_photo_id}).at(0)

    render({ :template => "photo_templates/photo_details.html.erb" })
  end
  
  def delete_photo

  the_id = params.fetch("an_id")
  matching_photos = Photo.where({ :id => the_id })

  @the_photo = matching_photos.at(0)

  @the_photo.destroy

  redirect_to("/photos" )
  end

  def create_photo
    input_image = params.fetch("input_image")
    input_caption = params.fetch("input_caption")
    input_owner_id = params.fetch("input_owner_id")

    a_new_photo = Photo.new
    a_new_photo.image = input_image
    a_new_photo.caption = input_caption
    a_new_photo.owner_id = input_owner_id

    a_new_photo.save

    redirect_to("/photos/" + a_new_photo.id.to_s)
  end
end
