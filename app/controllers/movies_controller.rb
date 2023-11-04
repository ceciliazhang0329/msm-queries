class MoviesController < ApplicationController
  def movie_list
    render({ :template => "movie_templates/list"})
  end

  def movie_detail
    movie_id = params.fetch("movie_id")
    matching = Movie.where({ :id => movie_id })
    @the_movie = matching.at(0)

    render({ :template => "movie_templates/detail"})
  end
end 
