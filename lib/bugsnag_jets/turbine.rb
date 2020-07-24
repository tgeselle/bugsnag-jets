require 'bugsnag'

module BugsnagJets
  class Turbine < Jets::Turbine
    initializer 'bugsnag.configure' do
      Bugsnag.configure do |config|
        config.api_key = ENV['BUGSNAG_API_KEY']
        config.release_stage = Jets.env.to_s
      end
    end

    on_exception 'bugsnag.capture' do |exception|
      Bugsnag.notify exception
    end
  end
end
