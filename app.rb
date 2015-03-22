set :haml, :format => :html5
 
get "/" do
  result = request.location
  puts result.inspect
  registry =  StateRegistry.lookup("TX")
  haml :index, :locals => {:state_registry_url => registry['state_registry_url'] }	
end

get "/ad" do
	haml :ad	
end




