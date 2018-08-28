require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
Bundler.require(*Rails.groups)

module Activitiesapp
  class Application < Rails::Application
    config.load_defaults 5.2

    # configuration to cache location
    config.cache_store = :file_store, File.join(Rails.root, 'storage', 'cache')
    
    config.generators do |g|
      g.system_tests = nil
      g.template_engine :haml
    end
    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(env_file)
    end

    config.eager_load_paths << Rails.root.join('app/data-objects')
  end

  
end
