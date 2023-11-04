Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "direct", :action => "direct_list" })
  get("/directors/:director_id", { :controller => "direct", :action => "direct_detail" })
  get("/directors/youngest", { :controller => "direct", :action => "direct_filter_y" })
  get("/directors/eldest", { :controller => "direct", :action => "direct_filter_o" })
  
  get("/movies", { :controller => "movies", :action => "movie_list" })
  get("/movies/:movie_id", { :controller => "movies", :action => "movie_detail" })

  get("/actors", { :controller => "actors", :action => "actor_list" })
  get("/actors/:actor_id", { :controller => "actors", :action => "actor_detail" })
end
