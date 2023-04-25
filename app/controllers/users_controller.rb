class UsersController < ApplicationController

  def index
    render({ :template => "user_templates/index.html.erb" })
  end

  def user_details
    render({ :template => "user_templates/user_details.html.erb" })
  end
  
end
