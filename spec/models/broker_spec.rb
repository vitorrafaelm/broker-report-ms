require 'rails_helper'

RSpec.describe Broker, type: :model do
  
  context 'Broker #validations' do 
    subject { create(:broker) }
 
    present_attributes = [:name, :identifier, :email, :password, :document_type, 
      :document_number, :broker_identifier]

    present_attributes.each do |attribute|
      it { is_expected.to validate_presence_of(attribute).on(:create) }
    end

    present_attributes.each do |attribute|
      it 'Broker should not be valid' do 
        subject[attribute] = ''
        expect(subject).not_to be_valid
        expect(subject.errors[attribute]).to include("can't be blank")
      end
    end
  end
end
