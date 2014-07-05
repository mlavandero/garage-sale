require 'rails_helper'

RSpec.describe Client, :type => :model do
  let(:client){ build :client }

  it "should have a valid factory" do
    expect(client).to be_valid
  end
end
