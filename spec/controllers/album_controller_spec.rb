require 'rails_helper'

describe AlbumsController do
  let(:user){FactoryGirl.create(:user)}
  let(:album){FactoryGirl.create(:album)}
  
  it "Index should respond 200" do
      login
      get :index
      response.code.should eq("200")
    end
    
  it "New should respond 200" do
      login
      get :new
      response.code.should eq("200")
    end
  
  it "create the album" do
      login
       post :create, album: {name: "asd", description: "asdfgfdgfdghfh"}
      expect(assigns(:album).name).to eq("asd")
    end
  
  it "show the album" do
     login
     get :show, id: album
     expect(assigns(:album).id).to eq(album.id) 
  end
  
  it "edit the album" do
     login
     get :show, id: album
     expect(assigns(:album).id).to eq(album.id) 
  end
  
  it "update the album" do
     login
     put :update, id: album, album: {name: "poiuy"}
     expect(assigns(:album).name).to eq("poiuy") 
  end
  
  it "delete the album" do
     login
     expect{
       delete :destroy, id: album
     }.to change(Album, :count).by(0) 
  end
           
end