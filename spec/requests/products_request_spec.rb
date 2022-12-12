require 'rails_helper'

RSpec.describe "Products", type: :request do
  before do
    @product = FactoryBot.create(:product)
  end
  

  describe "#index" do
    it "responds successfully" do
      get products_path

      expect(response).to be_successful
    end
  end
  
  describe "#create" do
    it "responds successfully" do
      post products_path,
      :params => { :product => { :title => "テスト", :money => "10000", :content => "テスト"}}
      
      expect(response).to be_successful
    end
  end


  describe "#update" do  
    it "responds successfully" do

      patch product_path(@product),
      :params => { :product => { :title => "テストテスト", :money => "10000", :content => "テスト"}}
      expect(response).to be_successful
    end
  end


  describe "#destroy" do
   
    it "responds successfully" do

      delete product_path(@product),
      
      expect(response).to be_successful
    end
  end





  


end
