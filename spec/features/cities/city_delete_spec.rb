
include Warden::Test::Helpers
Warden.test_mode!

# Feature: City delete
#   As a user
#   I want to delete a city
feature 'City delete', :devise, :js do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User can delete a city
  #   Given I am signed in
  #   When I delete a city
  #   Then I should see an city deleted message
  scenario 'user can delete a city' do
    skip 'skip a slow test'
    user = FactoryGirl.create(:user)
    city = FactoryGirl.create(:city)
    login_as(user, :scope => :user)
    visit edit_city_path(city)
    click_button 'Destroy City'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_selector ".alert", text: "City was successfully destroyed"
  end

end




