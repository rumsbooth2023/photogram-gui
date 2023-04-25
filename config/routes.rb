Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })

  get("/users/:an_id", { :controller => "users", :action => "user_details" })

  get("/photos", { :controller => "photos", :action => "index" })

  get("/photos/:an_id", { :controller => "photos", :action => "photo_details" })
end
