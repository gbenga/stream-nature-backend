class Api::V1::LocationsController < ApplicationController
    skip_before_action :authorised?, only: [:index, :show]

    def index
        locations = Location.all 
        render json: locations
    end

    def show
        locations = Location.find_by(id: params[:id])
        if locations
            render json: locations, include: [:events]
        else
            render json: "locations with this id not found"
        end
    end
end
