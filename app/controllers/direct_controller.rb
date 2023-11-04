class DirectController < ApplicationController
  def direct_list
    render({ :template => "direct_templates/list"})
  end

  def direct_detail
    director_id = params.fetch("director_id")
    matching = Director.where({ :id => director_id })
    @the_director = matching.at(0)

    render({ :template => "direct_templates/detail"})
  end
end 
