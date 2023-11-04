class DirectController < ApplicationController
  def direct_list
    render({ :template => "direct_templates/list"})
  end
  
end 
