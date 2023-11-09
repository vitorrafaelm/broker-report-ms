require 'rails_helper'

RSpec.describe Property, type: :model do

  describe "#validations" do
    subject { create(:property) }
    present_attributes = [:broker_identifier, :client_owner, :rooms_quantity, :informations]

    present_attributes.each do |attribute|
      it { is_expected.to validate_presence_of(attribute).on(:create) }
    end

    present_attributes.each do |attribute|
      it 'Property should not be valid' do
        subject[attribute] = ''
        expect(subject).not_to be_valid
        expect(subject.errors[attribute]).to include("can't be blank")
      end
    end
  end

  describe "#associations" do
    it { should have_one(:address) }
    it { should have_one(:broker) }
    it { should have_one(:client) }
    it { should have_many(:rooms) }
  end

end
