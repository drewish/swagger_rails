require 'rails/generators'

module SwaggerRails

  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def add_swagger_dir
      empty_directory('swagger/v1')
    end

    def add_initializer
      template('swagger_rails.rb', 'config/initializers/swagger_rails.rb')
    end

    def add_rspec_helper
      template('swagger_helper.rb', 'spec/swagger_helper.rb')
    end

    def add_routes
      route("mount SwaggerRails::Engine => '/api-docs'")
    end
  end
end
