require 'rails_helper'

describe User do
  let(:user){FactoryGirl.create(:user)}
  
  #Association
  it "should have many albums" do
    expect(user).to have_many(:albums)
  end
end
