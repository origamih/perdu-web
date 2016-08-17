require 'rails_helper'

RSpec.describe "menu_items/index", type: :view do
  before(:each) do
    assign(:menu_items, [
      MenuItem.create!(
        :menu_category => nil,
        :title => "Title",
        :description => "Description",
        :image_url => "Image Url",
        :price => "9.99"
      ),
      MenuItem.create!(
        :menu_category => nil,
        :title => "Title",
        :description => "Description",
        :image_url => "Image Url",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of menu_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
