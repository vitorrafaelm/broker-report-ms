require 'rails_helper'

RSpec.describe Image, type: :model do
  describe "#validations" do
    subject { create(:image) }
    present_attributes = [:room_identifier, :url, :description]

    present_attributes.each do |attribute|
      it { is_expected.to validate_presence_of(attribute).on(:create) }
    end

    present_attributes.each do |attribute|
      it 'Image should not be valid' do
        subject[attribute] = ''
        expect(subject).not_to be_valid
        expect(subject.errors[attribute]).to include("can't be blank")
      end
    end
  end

  describe 'associations' do
    it { is_expected.to  have_one(:room)}
  end
end
