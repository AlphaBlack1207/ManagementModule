require 'rails_helper'

RSpec.describe "Lists", type: :request do
  let(:user) { create(:user) }
  let(:board) { create(:board, user: user) }
  let(:list) { create(:list, board: board) }

  before do
    sign_in user
  end

  describe "GET /boards/:board_id/lists/new" do
    it "returns http success" do
      get new_board_list_path(board)
      expect(response).to have_http_status(:success)
    end
  end


  describe "GET /boards/:board_id/lists/:id/edit" do
    it "returns http success" do
      get edit_board_list_path(board, list)
      expect(response).to have_http_status(:success)
    end
  end


  describe "POST /boards/:board_id/lists" do
    context "with valid parameters" do
      it "creates a new list" do
        expect {
          post board_lists_path(board), params: { list: { title: "New List" } }
        }.to change { List.count }.by(1)
        expect(response).to have_http_status(:redirect)
      end
    end

    context "whith invalid parameters" do
      it "does not create a new list" do
        expect {
          post board_lists_path(board), params: { list: { title: "" } }
        }.not_to change { List.count }
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe "PUT /boards/:board_id/lists/:id" do
    context "with valid parameters" do
      it "updates the list" do
        expect {
          put board_list_path(board, list), params: { list: { title: "Updated List" } }
        }.to change { list.reload.title }.to("Updated List")
        expect(response).to have_http_status(:redirect)
      end
    end

    context "with invalid parameters" do
      it "does not update the list" do
        expect {
          put board_list_path(board, list), params: { list: { title: "" } }
        }.not_to change { list.title }
        expect(response).to have_http_status(:success)
      end
    end
  end
end
