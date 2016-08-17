require 'rails_helper'

RSpec.describe "menu_items/show", type: :view do
  before(:each) do
    @menu_item = assign(:menu_item, MenuItem.create!(
      :menu_category => nil,
      :title => "Title",
      :description => "Description",
      :image_url => "Image Url",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/9.99/)
  end
end
