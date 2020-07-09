class Api::V1::EventsController < ApplicationController
    def index
        events = Event.all 
        render json: events
    end

    def show
        event = Event.find(params[:id])
        render json: event, include: [:user, :location]
    end

    def like
        event = Event.find(params[:id])
        event.update(likes: event.likes + 1)
        render json: { updatedLikes: event.likes }
    end

end
