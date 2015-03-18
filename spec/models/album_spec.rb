require 'rails_helper'

describe Album do
  let(:album){FactoryGirl.create(:album)}
  
  #Association
  it"should belong to user" do
   expect(album).to belong_to(:user)
  end
  
  it "should have many photos" do
    expect(album).to have_many(:photos)
  end
  
end