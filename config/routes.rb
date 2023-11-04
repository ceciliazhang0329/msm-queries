Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "direct", :action => "direct_list" })
  get("/directors/:director_id", { :controller => "direct", :action => "direct_detail" })

  get("/movies", { :controller => "movies", :action => "movie_list" })
  get("/movies/:movie_id", { :controller => "movies", :action => "movie_detail" })
end
