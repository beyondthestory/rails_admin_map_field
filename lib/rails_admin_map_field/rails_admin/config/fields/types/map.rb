module RailsAdmin::Config::Fields::Types
  class Map < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:map, self)

    register_instance_option(:longitude_field) do
      :longitude
    end

    register_instance_option(:partial) do
      :form_map
    end

    register_instance_option(:google_api_key) do
      nil
    end

    register_instance_option(:default_latitude) do
      51.5 # Latitude of London, United Kingdom
    end

    register_instance_option(:default_longitude) do
      -0.5 # Longitude of London, United Kingdom
    end

    def dom_name
      @dom_name ||= "#{bindings[:form].object_name}_#{@name}_#{@longitude_name}"
    end
  end
end
