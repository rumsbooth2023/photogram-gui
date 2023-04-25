class UsersController < ApplicationController

  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index.html.erb" })
  end

  def user_details
    @user_name = params.fetch("an_id")
    @details = User.where({ :username => @user_name}).at(0)

    @photos = Photo.where({ :owner_id => @details.id})

    render({ :template => "user_templates/user_details.html.erb" })
  end

end
