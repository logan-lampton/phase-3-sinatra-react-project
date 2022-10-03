class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

#Member
  #Member create
  #double-check how to add party_id
  post "/members" do
    member = Member.create(
      character_name: params[:character_name], 
      player_name: params[:player_name], 
      class_name: params[:class_name], 
      race: params[:race], 
      level: params[:level], 
      alignment: params[:alignment], 
      party_id: params[:party_id]
    )
    member.to_json
  end

  #Member get all
  get "/members" do
    members = Member.all
    members.to_json
  end

  #Member get params
  get "/members/:id" do
    member = Member.find(params[:id])
    member.to_json
  end

  #Member patch
  patch "/members/:id" do
    member = Member.find(params[:id])
    member.update(
      character_name: params[:character_name], 
      player_name: params[:player_name], 
      class_name: params[:class_name], 
      race: params[:race], 
      level: params[:level], 
      alignment: params[:alignment]
    )
    member.to_json
  end

  #Member delete
  delete "/members/:id" do
    member = Member.find(params[:id])
    member.destroy
    member.to_json
  end

#Party
  #Party create
  #double-check how to add user_id
  post "/parties" do
    party = Party.create(
      name: params[:name], 
      campaign: params[:campaign], 
      DM: params[:DM], 
      description: params[:description], 
      user_id: params[:user_id]
    )
    party.to_json
  end

  #Party get all
  get "/parties" do
    parties = Party.all
    parties.to_json
  end

  #Party get params
  get "/parties/:id" do
    party = Party.find(params[:id])
    party.to_json
  end

  # #Party patch
  patch "/parties/:id" do
    party = Party.find(params[:id])
    party.update(
      name: params[:name], 
      campaign: params[:campaign], 
      DM: params[:DM], 
      description: params[:description]
    )
    party.to_json
  end

  # Party delete
  delete "/parties/:id" do
    party = Party.find(params[:id])
    party.destroy
    party.to_json
  end

#User
  #User create
  post "/users" do
    user = User.create(
      name: params[:name], 
      email: params[:email], 
      password: params[:password]
    )
    user.to_json
  end

  #User get all
  get "/users" do
    users = User.all
    users.to_json
  end

  #User get params
  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  #User patch
  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(
      name: params[:name], 
      email: params[:email], 
      password: params[:password]
    )
    user.to_json
  end

  #User delete
  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

end
