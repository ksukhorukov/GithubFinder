require 'rails_helper'

RSpec.describe "Githubs", type: :request do
  it "should get index" do
    get root_path
    expect(response).to have_http_status(:success)
  end
end
