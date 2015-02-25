require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET faq" do
    it "returns http success" do
      get :faq
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET t_and_c" do
    it "returns http success" do
      get :t_and_c
      expect(response).to have_http_status(:success)
    end
  end

end
