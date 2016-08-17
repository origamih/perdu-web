require 'rails_helper'

RSpec.describe "menu_categories/edit", type: :view do
  before(:each) do
    @menu_category = assign(:menu_category, MenuCategory.create!(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit menu_category form" do
    render

    assert_select "form[action=?][method=?]", menu_category_path(@menu_category), "post" do

      assert_select "input#menu_category_title[name=?]", "menu_category[title]"

      assert_select "input#menu_category_description[name=?]", "menu_category[description]"
    end
  end
end
