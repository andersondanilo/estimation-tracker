class DashboardController < ApplicationController
  before_action :authenticate_user!

  # GET /dashboard
  def index
    @graph_story_hours = get_graph_story_hours
  end

  def get_graph_story_hours
    map = {}
    [1, 2, 3, 5, 8, 13].each do |number|
      map["SP-#{number}"] = Activity.where(story_points: number).average(:hours)
    end
    map
  end
end
