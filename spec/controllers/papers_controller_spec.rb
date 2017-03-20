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

RSpec.describe PapersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Paper. As you add validations to Paper, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PapersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all papers as @papers" do
      paper = Paper.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:papers)).to eq([paper])
    end
  end

  describe "GET #show" do
    it "assigns the requested paper as @paper" do
      paper = Paper.create! valid_attributes
      get :show, params: {id: paper.to_param}, session: valid_session
      expect(assigns(:paper)).to eq(paper)
    end
  end

  describe "GET #new" do
    it "assigns a new paper as @paper" do
      get :new, params: {}, session: valid_session
      expect(assigns(:paper)).to be_a_new(Paper)
    end
  end

  describe "GET #edit" do
    it "assigns the requested paper as @paper" do
      paper = Paper.create! valid_attributes
      get :edit, params: {id: paper.to_param}, session: valid_session
      expect(assigns(:paper)).to eq(paper)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Paper" do
        expect {
          post :create, params: {paper: valid_attributes}, session: valid_session
        }.to change(Paper, :count).by(1)
      end

      it "assigns a newly created paper as @paper" do
        post :create, params: {paper: valid_attributes}, session: valid_session
        expect(assigns(:paper)).to be_a(Paper)
        expect(assigns(:paper)).to be_persisted
      end

      it "redirects to the created paper" do
        post :create, params: {paper: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Paper.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved paper as @paper" do
        post :create, params: {paper: invalid_attributes}, session: valid_session
        expect(assigns(:paper)).to be_a_new(Paper)
      end

      it "re-renders the 'new' template" do
        post :create, params: {paper: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested paper" do
        paper = Paper.create! valid_attributes
        put :update, params: {id: paper.to_param, paper: new_attributes}, session: valid_session
        paper.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested paper as @paper" do
        paper = Paper.create! valid_attributes
        put :update, params: {id: paper.to_param, paper: valid_attributes}, session: valid_session
        expect(assigns(:paper)).to eq(paper)
      end

      it "redirects to the paper" do
        paper = Paper.create! valid_attributes
        put :update, params: {id: paper.to_param, paper: valid_attributes}, session: valid_session
        expect(response).to redirect_to(paper)
      end
    end

    context "with invalid params" do
      it "assigns the paper as @paper" do
        paper = Paper.create! valid_attributes
        put :update, params: {id: paper.to_param, paper: invalid_attributes}, session: valid_session
        expect(assigns(:paper)).to eq(paper)
      end

      it "re-renders the 'edit' template" do
        paper = Paper.create! valid_attributes
        put :update, params: {id: paper.to_param, paper: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested paper" do
      paper = Paper.create! valid_attributes
      expect {
        delete :destroy, params: {id: paper.to_param}, session: valid_session
      }.to change(Paper, :count).by(-1)
    end

    it "redirects to the papers list" do
      paper = Paper.create! valid_attributes
      delete :destroy, params: {id: paper.to_param}, session: valid_session
      expect(response).to redirect_to(papers_url)
    end
  end

end
