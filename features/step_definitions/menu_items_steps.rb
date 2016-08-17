When(/^I access Menu Item page$/) do
  visit '/menu_items'
end

Then(/^I should see the Menu list$/) do
  expect(page).to have_content 'Listing Menu Items'
end

When(/^I access new Menu Item page$/) do
  visit '/menu_items/new'
end

Then(/^I should be able to create new Menu Item$/) do
  expect(page).to have_selector :link_or_button, 'Create Menu item'
end

When(/^I access Cocktails Menu page$/) do
  visit '/menu_items/cocktail'
end

Then(/^I should see the Cocktails Menu List$/) do
  expect(page).to have_content 'Our Cocktails'
end

When(/^I access Others Menu page$/) do
  visit '/menu_items/other'
end

Then(/^I should see the Others Menu list$/) do
  expect(page).to have_content 'Other Items'
end
