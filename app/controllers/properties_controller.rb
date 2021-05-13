class PropertiesController < ApplicationController
  def index
    all_properties = Property.all
    render json: all_properties.as_json
  end

  def create
    property = Property.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      availability: params[:availability],
      address: params[:address],
      price: params[:price]
    )
    property.save
    render json: property
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
    one_property.availability = params[:availability] || one_property.availability
    one_property.price = params[:price] || one_property.price
    one_property.save
    render json: one_property.as_json
  end

  def destroy
    one_property = Property.find_by(id: params[:id])
    one_property.destroy
    render json: {
      message: "Property successfully obliterated!"
    }
  end
end
