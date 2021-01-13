module Api
  class EventsController < ApplicationController
    def index
      @events = Group.friendly.find(params[:group_id]).events.order(start_at: :desc)
      authorize @events
    end
  end
end
