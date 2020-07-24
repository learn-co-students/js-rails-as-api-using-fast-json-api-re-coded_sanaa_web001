class Sighting < ApplicationRecord
  belongs_to :bird
  belongs_to :location
end

class SightingsController < ApplicationController
  def show
  sighting = Sighting.find_by(id: params[:id])
  options = {
    include: [:bird, :location]
  }
  render json: SightingSerializer.new(sighting, options)
end
end