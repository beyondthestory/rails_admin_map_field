module RailsAdmin::Config::Fields::Types
  class Map < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:map, self)

    def allowed_methods
      [@name, longitude_field]
    end

    # THe name of the corresponding longitude field to match the latitude field
    # in this object.
    register_instance_option(:longitude_field) do
      :longitude
    end

    register_instance_option(:partial) do
      :form_map
    end

    register_instance_option(:draggable) do
      true
    end

    register_instance_option(:scrollwheel) do
      true
    end

    register_instance_option(:zoom_control) do
      true
    end

    register_instance_option(:street_view_control) do
      true
    end

    register_instance_option(:fixed_marker) do
      false
    end

    register_instance_option(:disable_double_click_zoom) do
      false
    end

    register_instance_option(:width) do
      300
    end

    register_instance_option(:height) do
      200
    end

    # Google Maps API Key - optional
    register_instance_option(:google_api_key) do
      nil
    end

    # Latitude value to display in the map if the latitude attribute is nil
    # (Otherwise the location defaults to (0,0) which is in the Gulf of Guinea
    register_instance_option(:default_latitude) do
      51.5 # Latitude of London, United Kingdom
    end

    # Longitude value to display if the longitude attribute is nil
    register_instance_option(:default_longitude) do
      -0.126 # Longitude of London, United Kingdom
    end

    # Default zoom level of the map
    register_instance_option(:default_zoom_level) do
      8
    end

    def dom_name
      @dom_name ||= "#{bindings[:form].object_name}_#{@name}_#{longitude_field}"
    end

    def latitude_dom_name
      @lat_dom_name ||= "#{bindings[:form].object_name}_#{@name}"
    end

    def longitude_dom_name
      @lon_dom_name ||= "#{bindings[:form].object_name}_#{longitude_field}"
    end
  end
end
