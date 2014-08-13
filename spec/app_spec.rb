require "spec_helper"

describe "Sinatra App" do

  it "should respond to GET" do
    get '/'
    last_response.body.should match(/Conway/)
  end

  it "should take a turn" do
	post '/turn', {:board => "[[0, 1, 1], [0, 1, 1], [0, 0, 0]]"}.to_json  
    last_response.body.should match(/Conway/)   
  end 

end

