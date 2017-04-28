require 'rails_helper'
require 'spec_helper'

RSpec.describe Contact, type: :model do
  it "has a valid factory" do
    contact = FactoryGirl.create(:contact)
    expect(contact).to be_valid
  end

  it "is invalid without a firstname" do
    contact = FactoryGirl.build(:contact, firstname: nil)
    expect(contact).not_to be_valid
  end

  it "is invalid without a lastname" do
    contact = FactoryGirl.build(:contact, lastname: nil)
    expect(contact).not_to be_valid
  end

  it "returns a contact's full name as a string" do
    contact = FactoryGirl.build(:contact, firstname: "John", lastname: "Doe")
    expect(contact.fullname).to eq("John Doe")
  end
end
