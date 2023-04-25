class UsersController < ApplicationController

  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index.html.erb" })
  end

  def user_details
    @url_username = params.fetch("an_id")
    @the_user = User.where({ :username => @url_username}).at(0)

    render({ :template => "user_templates/user_details.html.erb" })
  end

  def create_user
    input_username = params.fetch("input_username")

    a_new_user = User.new
    a_new_user.username = input_username

    a_new_user.save

    redirect_to("/users/" + a_new_user.username)
  end
end
