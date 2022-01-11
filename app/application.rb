class Application

    def call(env)
        resp = Rack::Response.new

        randomtime = Time.now.hour

        if randomtime <= 12
            resp.write "Good Morning"
        else
            resp.write "Good Afternoon"
        end
        resp.finish
    end

end
