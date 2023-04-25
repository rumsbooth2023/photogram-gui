class PhotosController < ApplicationController

  def index
    matching_photos = Photo.all

    @list_of_photos = matching_photos.order({ :username => :asc })

    render({ :template => "photo_templates/index.html.erb" })
  end

  def photo_details
    render({ :template => "photo_templates/photo_details.html.erb" })
  end
  
end
