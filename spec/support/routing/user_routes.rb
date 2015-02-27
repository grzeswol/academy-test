require 'rails_helper'

RSpec.describe "routing to users", :type => :routing do
  it "routes /all_users to user#index" do
    expect(:get => "/all_users").to route_to(
      :controller => "users",
      :action => "index",
    )
  end
end
