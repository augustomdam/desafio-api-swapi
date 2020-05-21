class HomeController < ApplicationController
  before_action :set_info_api_service
  def index
    @general = @api_service.general
  end

  def peoples
    @peoples = @api_service.peoples
  end

  def planets
    @planets = @api_service.planets
  end

  def films
    @films = @api_service.films
  end

  def species
    @species = @api_service.species
  end

  def vehicules
    @vehicules = @api_service.vehicules
  end

  def starships
    @starships = @api_service.starships
  end

  private
  def set_info_api_service
    @api_service = ApiSumary.new
  end
end
