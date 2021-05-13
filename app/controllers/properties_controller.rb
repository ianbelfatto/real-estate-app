class PropertiesController < ApplicationController
  def index
    all_properties = Property.all
    render json: all_properties.as_json
  end

  def create
    coordinates = Geocoder.coordinates(params[:address])
    property = Property.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      availability: params[:availability],
      price: params[:price],
      latitude: coordinates[0],
      longitude: coordinates[1]
    )
    property.save
    render json: property.as_json
  end

  def show
    one_property = Property.find_by(id: params[:id])
    render json: one_property.as_json
  end

  def update
    one_property = Property.find_by(id: params[:id])
    one_property.description = params[:description] || one_property.description
    one_property.year_built = params[:year_built] || one_property.year_built
    one_property.square_feet = params[:square_feet] || one_property.square_feet
    one_property.bedrooms = params[:bedrooms] || one_property.bedrooms
    one_property.bathrooms = params[:bathrooms] || one_property.bathrooms
    one_property.availability = params[:availability] || one_property.address = params[:address] || one_property.address
    one_property.price = params[:price] || one_property.price
    one_property.save
    render json: one_property
  end

  def destroy
    one_property = Property.find_by(id: params[:id])
    one_property.destroy
    render json: {
      message: "Property successfully obliterated!"
    }
  end
end
