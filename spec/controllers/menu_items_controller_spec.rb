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

RSpec.describe MenuItemsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # MenuItem. As you add validations to MenuItem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for :menu_item
  }

  let(:invalid_attributes) {
    attributes_for :invalid_menu_item
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MenuItemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  login_admin_all

  describe "GET #cocktail" do
    it "assigns cocktail menu_items as @menu_items" do
      menu_category = create(:menu_category, category: 'cocktail')
      menu_item = create(:menu_item, menu_category: menu_category)
      get :cocktail
      expect(assigns(:menu_items)).to eq [menu_item]
    end
  end

  describe "GET #other" do
    it "assigns other menu_items as @menu_items" do
      menu_category = create(:menu_category, category: 'other')
      menu_item = create(:menu_item, menu_category: menu_category)
      get :other
      expect(assigns(:menu_items)).to eq [menu_item]
    end
  end

  describe "GET #index" do
    it "assigns all menu_items as @menu_items" do
      menu_item = MenuItem.create! valid_attributes
      get :index,  {}, session: valid_session
      expect(assigns(:menu_items)).to eq([menu_item])
    end
  end

  describe "GET #show" do
    it "assigns the requested menu_item as @menu_item" do
      menu_item = MenuItem.create! valid_attributes
      get :show,  {id: menu_item.to_param}, session: valid_session
      expect(assigns(:menu_item)).to eq(menu_item)
    end
  end

  describe "GET #new" do
    it "assigns a new menu_item as @menu_item" do
      get :new,  {}, session: valid_session
      expect(assigns(:menu_item)).to be_a_new(MenuItem)
    end
  end

  describe "GET #edit" do
    it "assigns the requested menu_item as @menu_item" do
      menu_item = MenuItem.create! valid_attributes
      get :edit,  {id: menu_item.to_param}, session: valid_session
      expect(assigns(:menu_item)).to eq(menu_item)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new MenuItem" do
        expect {
          post :create,  {menu_item: valid_attributes}, session: valid_session
        }.to change(MenuItem, :count).by(1)
      end

      it "assigns a newly created menu_item as @menu_item" do
        post :create,  {menu_item: valid_attributes}, session: valid_session
        expect(assigns(:menu_item)).to be_a(MenuItem)
        expect(assigns(:menu_item)).to be_persisted
      end

      it "redirects to the created menu_item" do
        post :create,  {menu_item: valid_attributes}, session: valid_session
        expect(response).to redirect_to(MenuItem.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved menu_item as @menu_item" do
        post :create,  {menu_item: invalid_attributes}, session: valid_session
        expect(assigns(:menu_item)).to be_a_new(MenuItem)
      end

      it "re-renders the 'new' template" do
        post :create,  {menu_item: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {title: "New Title"}
      }

      it "updates the requested menu_item" do
        menu_item = MenuItem.create! valid_attributes
        put :update,  {id: menu_item.to_param, menu_item: new_attributes}, session: valid_session
        menu_item.reload
        expect(menu_item.title).to eq 'New Title'
      end

      it "assigns the requested menu_item as @menu_item" do
        menu_item = MenuItem.create! valid_attributes
        put :update,  {id: menu_item.to_param, menu_item: valid_attributes}, session: valid_session
        expect(assigns(:menu_item)).to eq(menu_item)
      end

      it "redirects to the menu_item" do
        menu_item = MenuItem.create! valid_attributes
        put :update,  {id: menu_item.to_param, menu_item: valid_attributes}, session: valid_session
        expect(response).to redirect_to(menu_item)
      end
    end

    context "with invalid params" do
      it "assigns the menu_item as @menu_item" do
        menu_item = MenuItem.create! valid_attributes
        put :update,  {id: menu_item.to_param, menu_item: invalid_attributes}, session: valid_session
        expect(assigns(:menu_item)).to eq(menu_item)
      end

      it "re-renders the 'edit' template" do
        menu_item = MenuItem.create! valid_attributes
        put :update,  {id: menu_item.to_param, menu_item: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested menu_item" do
      menu_item = MenuItem.create! valid_attributes
      expect {
        delete :destroy,  {id: menu_item.to_param}, session: valid_session
      }.to change(MenuItem, :count).by(-1)
    end

    it "redirects to the menu_items list" do
      menu_item = MenuItem.create! valid_attributes
      delete :destroy,  {id: menu_item.to_param}, session: valid_session
      expect(response).to redirect_to(menu_items_url)
    end
  end

end
