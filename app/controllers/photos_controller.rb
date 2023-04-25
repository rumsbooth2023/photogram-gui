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
  
end
