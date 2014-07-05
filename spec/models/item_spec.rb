require 'rails_helper'

RSpec.describe Item, :type => :model do
  let(:item){ build(:item) }

  it 'has a valid factory' do
    expect(item).to be_valid
  end
end
