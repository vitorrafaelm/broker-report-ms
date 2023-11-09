require 'rails_helper'

RSpec.describe Room, type: :model do
  describe "#validations" do
    subject { create(:room) }
    present_attributes = [:property_identifier, :room_name, :room_width, :room_length, :room_description, :room_observations]

    present_attributes.each do |attribute|
      it { is_expected.to validate_presence_of(attribute).on(:create) }
    end

    present_attributes.each do |attribute|
      it 'Room should not be valid' do
        subject[attribute] = ''
        expect(subject).not_to be_valid
        expect(subject.errors[attribute]).to include("can't be blank")
      end
    end
  end

  describe 'associations' do
    it { is_expected.to  have_one(:propertie)}
    it { is_expected.to  have_many(:images)}
  end
end
