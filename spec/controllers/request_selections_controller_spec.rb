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

describe RequestSelectionsController do

  # This should return the minimal set of attributes required to create a valid
  # RequestSelection. As you add validations to RequestSelection, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RequestSelectionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all request_selections as @request_selections" do
      request_selection = RequestSelection.create! valid_attributes
      get :index, {}, valid_session
      assigns(:request_selections).should eq([request_selection])
    end
  end

  describe "GET show" do
    it "assigns the requested request_selection as @request_selection" do
      request_selection = RequestSelection.create! valid_attributes
      get :show, {:id => request_selection.to_param}, valid_session
      assigns(:request_selection).should eq(request_selection)
    end
  end

  describe "GET new" do
    it "assigns a new request_selection as @request_selection" do
      get :new, {}, valid_session
      assigns(:request_selection).should be_a_new(RequestSelection)
    end
  end

  describe "GET edit" do
    it "assigns the requested request_selection as @request_selection" do
      request_selection = RequestSelection.create! valid_attributes
      get :edit, {:id => request_selection.to_param}, valid_session
      assigns(:request_selection).should eq(request_selection)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new RequestSelection" do
        expect {
          post :create, {:request_selection => valid_attributes}, valid_session
        }.to change(RequestSelection, :count).by(1)
      end

      it "assigns a newly created request_selection as @request_selection" do
        post :create, {:request_selection => valid_attributes}, valid_session
        assigns(:request_selection).should be_a(RequestSelection)
        assigns(:request_selection).should be_persisted
      end

      it "redirects to the created request_selection" do
        post :create, {:request_selection => valid_attributes}, valid_session
        response.should redirect_to(RequestSelection.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved request_selection as @request_selection" do
        # Trigger the behavior that occurs when invalid params are submitted
        RequestSelection.any_instance.stub(:save).and_return(false)
        post :create, {:request_selection => {}}, valid_session
        assigns(:request_selection).should be_a_new(RequestSelection)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        RequestSelection.any_instance.stub(:save).and_return(false)
        post :create, {:request_selection => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested request_selection" do
        request_selection = RequestSelection.create! valid_attributes
        # Assuming there are no other request_selections in the database, this
        # specifies that the RequestSelection created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        RequestSelection.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => request_selection.to_param, :request_selection => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested request_selection as @request_selection" do
        request_selection = RequestSelection.create! valid_attributes
        put :update, {:id => request_selection.to_param, :request_selection => valid_attributes}, valid_session
        assigns(:request_selection).should eq(request_selection)
      end

      it "redirects to the request_selection" do
        request_selection = RequestSelection.create! valid_attributes
        put :update, {:id => request_selection.to_param, :request_selection => valid_attributes}, valid_session
        response.should redirect_to(request_selection)
      end
    end

    describe "with invalid params" do
      it "assigns the request_selection as @request_selection" do
        request_selection = RequestSelection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RequestSelection.any_instance.stub(:save).and_return(false)
        put :update, {:id => request_selection.to_param, :request_selection => {}}, valid_session
        assigns(:request_selection).should eq(request_selection)
      end

      it "re-renders the 'edit' template" do
        request_selection = RequestSelection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RequestSelection.any_instance.stub(:save).and_return(false)
        put :update, {:id => request_selection.to_param, :request_selection => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested request_selection" do
      request_selection = RequestSelection.create! valid_attributes
      expect {
        delete :destroy, {:id => request_selection.to_param}, valid_session
      }.to change(RequestSelection, :count).by(-1)
    end

    it "redirects to the request_selections list" do
      request_selection = RequestSelection.create! valid_attributes
      delete :destroy, {:id => request_selection.to_param}, valid_session
      response.should redirect_to(request_selections_url)
    end
  end

end
