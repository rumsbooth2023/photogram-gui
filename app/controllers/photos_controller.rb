class PhotosController < ApplicationController

  def index
    render({ :template => "photo_templates/index.html.erb" })
  end

  def photo_details
    @photo_id = params.fetch("an_id")
    @details = Photo.where({ :id => @photo_id}).at(0)

    render({ :template => "photo_templates/photo_details.html.erb" })
  end
  
end
