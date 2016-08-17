FactoryGirl.define do
  factory :menu_category do
    title "MyString"
    description "MyString"
    category "String"

    factory :invalid_menu_category do
      title ""
    end
  end
end
