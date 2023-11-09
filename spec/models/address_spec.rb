require 'rails_helper'

RSpec.describe Address, type: :model do

  describe "#validations" do
    subject { create(:address) }
    present_attributes = [:address_line_one, :address_line_two, :zipcode, :city, :state, :country]

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

  describe 'associations' do
    it { is_expected.to  belong_to(:broker)}
    it { is_expected.to  belong_to(:property)}
    it { is_expected.to  belong_to(:client)}
  end
end
