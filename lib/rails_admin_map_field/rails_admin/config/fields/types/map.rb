module RailsAdmin::Config::Fields::Types
  class Map < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:map, self)

    # THe name of the corresponding longitude field to match the latitude field
    # in this object.
    register_instance_option(:longitude_field) do
      :longitude
    end

    register_instance_option(:address_field) do
      :address
    end

    register_instance_option(:city_field) do
      :city
    end

    register_instance_option(:state_field) do
      :state
    end

    register_instance_option(:partial) do
      :form_map
    end

    # Google Maps API Key - optional
    register_instance_option(:google_api_key) do
      nil
    end

    # Latitude value to display in the map if the latitude attribute is nil
    # (Otherwise the location defaults to (0,0) which is in the Gulf of Guinea
    register_instance_option(:default_latitude) do
      40.711417 # Latitude of Jersey City, NJ
    end

    # Longitude value to display if the longitude attribute is nil
    register_instance_option(:default_longitude) do
      74.0647 # Longitude of Jersey City, NJ
    end

    # Default zoom level of the map
    register_instance_option(:default_zoom_level) do
      8
    end

    def dom_name
      @dom_name ||= "#{bindings[:form].object_name}_#{@name}_#{@longitude_field}"
    end

    def latitude_dom_name
      @lat_dom_name ||= "#{bindings[:form].object_name}_#{@name}"
    end

    def longitude_dom_name
      @lon_dom_name ||= "#{bindings[:form].object_name}_#{@longitude_field}"
    end
  end
end
