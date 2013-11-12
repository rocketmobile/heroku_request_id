module Rack
  module Analyzer
    class HerokuRequestIdRailtie < Rails::Railtie
      initializer "heroku_request_id_railtie.configure_rails_initialization" do |app|
        app.middleware.insert 0, HerokuRequestId::RequestId
      end
    end
  end
end
