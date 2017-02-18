require 'pry'
class Application

  def call(env)
    resp=Rack::Response.new
    req=Rack::Request.new(env)
    # binding.pry
    if req.path.match("/items/")

        item_path= req.path.split("/items/").last

        if Item.item[item_path]
          resp.write Item.item[item_path]
          resp.status=200
        else
          resp.write "Item not found"
          resp.status=400
        end
    else
          resp.write "Route not found"
          resp.status=404
    end
    resp.finish

  end

end
