FactoryGirl.define do
  factory :menu_item do
    menu_category
    title "MyString"
    description "MyString"
    image_url "MyString"
    price "9.99"

    

    factory :invalid_menu_item do 
      title ""
    end
  end
end
