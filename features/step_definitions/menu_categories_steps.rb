Given(/^Admin has already registered$/) do
  FactoryGirl.create(:admin)
end

Given(/^I am on the home page and not logged in$/) do
  visit '/admins/sign_out'
end

When(/^I access Menu Category page$/) do
  visit '/menu_categories'
end

Then(/^I should be asked for logging in$/) do
  expect(page.current_path).to eq '/admins/sign_in'
end

When(/^I access new Menu Category page$/) do
  visit '/menu_categories/new'
end

Given(/^I am logged in$/) do
  visit '/admins/sign_out'
  visit '/admins/sign_in'
  fill_in 'Email', with: 'tranhuu.phuhuy@gmail.com'
  fill_in 'Password', with: '123456'
  click_button 'Log in'
end

Then(/^I should see Menu Category list$/) do
  expect(page).to have_content 'Listing Menu Categories'
end

Then(/^I should be able to create new Menu Category$/) do
  expect(page).to have_selector :link_or_button, 'Create Menu category'
end

