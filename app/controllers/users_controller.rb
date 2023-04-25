class UsersController < ApplicationController

  def index
    render({ :template => "user_templates/index.html.erb" })
  end

  def user_details
    @user_name = params.fetch("an_id")
    @details = User.where({ :username => @user_name}).at(0)

    render({ :template => "user_templates/user_details.html.erb" })
  end

end
