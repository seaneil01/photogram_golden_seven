Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/photos", {:controller => "photos", :actions => "photos"})

  get("photos/new", {:controller => "photos", :action => "new"})

  # photos/:photo
  #
  # photos/:photo/edit
  #
  # delete_photo/:photo

end
