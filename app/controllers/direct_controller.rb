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

  def direct_filter_y
    @youngest_director = Director.where.not(dob: nil).order(dob: :desc).first
    render({ :template => "direct_templates/young"})
  end

  def direct_filter_o
    @oldest_director = Director.where.not(dob: nil).order(dob: :asc).first
    render({ :template => "direct_templates/old"})
  end
end
