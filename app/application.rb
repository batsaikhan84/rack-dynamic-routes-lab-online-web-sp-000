class Application
  def all(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = object.find{|s| s.title = item_name}
      resp.write item.price
    end
    
end