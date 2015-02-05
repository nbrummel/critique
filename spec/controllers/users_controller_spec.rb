require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

<<<<<<< HEAD
  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

=======
>>>>>>> c8c7373596edd1bf8d9ee9c1ac4fd8263133ed44
  describe "GET create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

<<<<<<< HEAD
  describe "GET destroy" do
    it "returns http success" do
      get :destroy
=======
  describe "GET edit" do
    it "returns http success" do
      get :edit
>>>>>>> c8c7373596edd1bf8d9ee9c1ac4fd8263133ed44
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET search" do
    it "returns http success" do
      get :search
      expect(response).to have_http_status(:success)
    end
  end

<<<<<<< HEAD
=======
  describe "GET destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

>>>>>>> c8c7373596edd1bf8d9ee9c1ac4fd8263133ed44
  describe "GET dashboard" do
    it "returns http success" do
      get :dashboard
      expect(response).to have_http_status(:success)
    end
  end

end
