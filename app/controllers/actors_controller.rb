class ActorsController < ApplicationController
  def actor_list
    render({ :template => "actor_templates/list"})
  end

  def actor_detail
    actor_id = params.fetch("actor_id")
    matching = Actor.where({ :id => actor_id })
    @the_actor = matching.at(0)

    render({ :template => "actor_templates/detail"})
  end
end 
