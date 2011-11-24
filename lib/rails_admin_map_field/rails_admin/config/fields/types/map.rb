module RailsAdmin::Config::Fields::Types
  class Map < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:map, self)

    register_instance_option(:longitude_field) do
      :longitude
    end

    register_instance_option(:partial) do
      :form_map
    end
  end
end
