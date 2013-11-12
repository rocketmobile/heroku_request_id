module HerokuRequestId
  class RequestId
    def initialize(app)
      @app = app
    end

    def call(env)
      env["HTTP_X_REQUEST_ID"] = env["HTTP_HEROKU_REQUEST_ID"] if env["HTTP_HEROKU_REQUEST_ID"].presence
      @app.call(env)
    end
  end
end