require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ClientsController, :type => :controller do

  let(:client){ create(:client) }
  let(:valid_attributes){ attributes_for(:client) }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ClientsController. Be sure to keep this updated too.
  let(:valid_session) {  }

  before(:each) do

  end

  describe "GET show" do
    it "assigns the requested client as @client" do
      get :show, {:id => client.to_param}, {client_id: client.id}
      expect(assigns(:client)).to eq(client)
    end
  end

  describe "GET new" do
    it "assigns a new client as @client" do
      get :new, {}
      expect(assigns(:client)).to be_a_new(Client)
    end
  end

  describe "GET edit" do
    it "assigns the requested client as @client" do
      get :edit, {:id => client.to_param}, valid_session
      expect(assigns(:client)).to eq(client)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Client" do
        expect {
          post :create, {:client => valid_attributes}, valid_session
        }.to change(Client, :count).by(1)
      end

      it "assigns a newly created client as @client" do
        post :create, {:client => valid_attributes}, valid_session
        expect(assigns(:client)).to be_a(Client)
        expect(assigns(:client)).to be_persisted
      end

      it "redirects to the created client" do
        post :create, {:client => valid_attributes}, valid_session
        expect(response).to redirect_to(Client.last)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        attributes_for(:client)
      }

      it "updates the requested client" do
        put :update, {:id => client.to_param, :client => new_attributes}, valid_session
        client.reload
        new_attributes.each do |field, value|
          expect(client.send(field)).to eq value
        end
      end

      it "assigns the requested client as @client" do
        put :update, {:id => client.to_param, :client => valid_attributes}, valid_session
        expect(assigns(:client)).to eq(client)
      end

      it "redirects to the client" do
        put :update, {:id => client.to_param, :client => valid_attributes}, valid_session
        expect(response).to redirect_to(client)
      end
    end
  end

end