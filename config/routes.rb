Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/new",      { :controller => "photos", :action => "new_form" })
  get("/photos/:number",       { :controller => "photos", :action => "show" })
  get("/photos/:number/edit", { :controller => "photos", :action => "edit" })
  get("/delete_photo/:number", { :controller => "photos", :action => "destroy" })

end
