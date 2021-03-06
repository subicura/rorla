# == Schema Information
#
# Table name: purchase_requests
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  send_date         :date
#  sender_name       :string(10)
#  send_total_price  :integer          default(0)
#  confirmed         :boolean          default(FALSE)
#  confirmed_at      :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  delivery          :boolean          default(FALSE)
#  parcel_zip        :string(10)
#  parcel_addr       :string(255)
#  parcel_receiver   :string(10)
#  memo              :text(65535)
#  group_purchase_id :integer
#  deleted           :boolean          default(FALSE)
#  deleted_at        :datetime
#  deleted_by_id     :integer
#

require 'spec_helper'

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

describe PurchaseRequestsController do

  # This should return the minimal set of attributes required to create a valid
  # PurchaseRequest. As you add validations to PurchaseRequest, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PurchaseRequestsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all purchase_requests as @purchase_requests" do
      purchase_request = PurchaseRequest.create! valid_attributes
      get :index, {}, valid_session
      assigns(:purchase_requests).should eq([purchase_request])
    end
  end

  describe "GET show" do
    it "assigns the requested purchase_request as @purchase_request" do
      purchase_request = PurchaseRequest.create! valid_attributes
      get :show, {:id => purchase_request.to_param}, valid_session
      assigns(:purchase_request).should eq(purchase_request)
    end
  end

  describe "GET new" do
    it "assigns a new purchase_request as @purchase_request" do
      get :new, {}, valid_session
      assigns(:purchase_request).should be_a_new(PurchaseRequest)
    end
  end

  describe "GET edit" do
    it "assigns the requested purchase_request as @purchase_request" do
      purchase_request = PurchaseRequest.create! valid_attributes
      get :edit, {:id => purchase_request.to_param}, valid_session
      assigns(:purchase_request).should eq(purchase_request)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PurchaseRequest" do
        expect {
          post :create, {:purchase_request => valid_attributes}, valid_session
        }.to change(PurchaseRequest, :count).by(1)
      end

      it "assigns a newly created purchase_request as @purchase_request" do
        post :create, {:purchase_request => valid_attributes}, valid_session
        assigns(:purchase_request).should be_a(PurchaseRequest)
        assigns(:purchase_request).should be_persisted
      end

      it "redirects to the created purchase_request" do
        post :create, {:purchase_request => valid_attributes}, valid_session
        response.should redirect_to(PurchaseRequest.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved purchase_request as @purchase_request" do
        # Trigger the behavior that occurs when invalid params are submitted
        PurchaseRequest.any_instance.stub(:save).and_return(false)
        post :create, {:purchase_request => { "user" => "invalid value" }}, valid_session
        assigns(:purchase_request).should be_a_new(PurchaseRequest)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PurchaseRequest.any_instance.stub(:save).and_return(false)
        post :create, {:purchase_request => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested purchase_request" do
        purchase_request = PurchaseRequest.create! valid_attributes
        # Assuming there are no other purchase_requests in the database, this
        # specifies that the PurchaseRequest created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PurchaseRequest.any_instance.should_receive(:update).with({ "user" => "" })
        put :update, {:id => purchase_request.to_param, :purchase_request => { "user" => "" }}, valid_session
      end

      it "assigns the requested purchase_request as @purchase_request" do
        purchase_request = PurchaseRequest.create! valid_attributes
        put :update, {:id => purchase_request.to_param, :purchase_request => valid_attributes}, valid_session
        assigns(:purchase_request).should eq(purchase_request)
      end

      it "redirects to the purchase_request" do
        purchase_request = PurchaseRequest.create! valid_attributes
        put :update, {:id => purchase_request.to_param, :purchase_request => valid_attributes}, valid_session
        response.should redirect_to(purchase_request)
      end
    end

    describe "with invalid params" do
      it "assigns the purchase_request as @purchase_request" do
        purchase_request = PurchaseRequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PurchaseRequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => purchase_request.to_param, :purchase_request => { "user" => "invalid value" }}, valid_session
        assigns(:purchase_request).should eq(purchase_request)
      end

      it "re-renders the 'edit' template" do
        purchase_request = PurchaseRequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PurchaseRequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => purchase_request.to_param, :purchase_request => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested purchase_request" do
      purchase_request = PurchaseRequest.create! valid_attributes
      expect {
        delete :destroy, {:id => purchase_request.to_param}, valid_session
      }.to change(PurchaseRequest, :count).by(-1)
    end

    it "redirects to the purchase_requests list" do
      purchase_request = PurchaseRequest.create! valid_attributes
      delete :destroy, {:id => purchase_request.to_param}, valid_session
      response.should redirect_to(purchase_requests_url)
    end
  end

end
