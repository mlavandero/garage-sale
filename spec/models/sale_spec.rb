require 'rails_helper'

RSpec.describe Sale, :type => :model do
  let(:sale){ build :sale }

  it "has a valid factory" do
    expect(sale).to be_valid
  end
end
