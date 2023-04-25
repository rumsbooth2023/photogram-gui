Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })

  get("/users/:an_id", { :controller => "users", :action => "user_details" })

  get("/insert_user_record/", { :controller => "users", :action => "create_user" })

  get("/update_user/:an_id", { :controller => "users", :action => "update_user" })
  
  get("/photos", { :controller => "photos", :action => "index" })

  get("/photos/:an_id", { :controller => "photos", :action => "photo_details" })

  get("/delete_photo/:an_id", { :controller => "photos", :action => "delete_photo" })
  
  get("/insert_photo_record/", { :controller => "photos", :action => "create_photo" })

  get("/update_photo/:an_id", { :controller => "photos", :action => "update_photo" })
end
