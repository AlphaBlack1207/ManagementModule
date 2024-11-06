require 'rails_helper'

RSpec.describe "Boards", type: :request do
  let(:user) { create(:user) }
  let(:board) { create(:board, user: user) }

  before do
    sign_in user
  end

  describe "GET new" do
    it "returns http success" do
      get new_board_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get edit_board_path(board)
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    context "with valid parameters" do
      it "creates a new board" do
        expect {
          post boards_path, params: { board: { name: "New board" } }
        }.to change(Board, :count).by(1)
        expect(response).to have_http_status(:redirect)
      end
    end

    context "with invalid parameters" do
      it "does not create a new board" do
        expect {
          post boards_path, params: { board: { name: "" } }
        }.not_to change { Board.count }
        expect(response).to have_http_status(:success)
      end
    end
  end
end
