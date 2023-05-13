class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    def index

        powers =Power.all
        render json: powers
    end

    def show
        power = find_power
        render json: power
    end

       
    private 
  def find_power 
    Power.find(params[:id])
  end

  def render_not_found
    render json: { error: "Power not found" }, status: :not_found
  end
end
