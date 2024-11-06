require 'rails_helper'

RSpec.describe "Boards", type: :request do
  describe "GET new" do
    get new_boards_path
    expect(response).to have_http_status(:success)
  end
end
