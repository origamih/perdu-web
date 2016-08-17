require 'rails_helper'

RSpec.describe "menu_categories/show", type: :view do
  before(:each) do
    @menu_category = assign(:menu_category, MenuCategory.create!(
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
  end
end
