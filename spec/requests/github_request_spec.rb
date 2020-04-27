require 'rails_helper'

RSpec.describe "Githubs", type: :request do
  it "should get index" do
    get root_path
    expect(response).to have_http_status(:success)
  end

  it "renders the index template" do
    get root_path
    expect(response).to render_template("index")
  end

  it "successfully display repo info when the repo exists" do 
  	get "#{root_path}?repo_name=2d931510-d99f-494a-8c67-87feb05e1594"
  	expect(response.body).to include("Test repo for Github Finder")
  end
end
