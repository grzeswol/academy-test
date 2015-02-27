include Warden::Test::Helpers
Warden.test_mode!

# Feature: City edit
#   As a user
#   I want to edit a city
#   So I can change short name of the city
feature 'City edit', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User changes email address
  #   Given I am signed in
  #   When I change my email address
  #   Then I see an account updated message
  scenario 'user changes short name of the city' do
    user = FactoryGirl.create(:user)
    city = FactoryGirl.create(:city)
    login_as(user, :scope => :user)
    visit edit_city_path(city)
    fill_in 'Short name', :with => 'Tct'
    click_button 'Update City'
    expect(page).to have_selector ".alert", text: "City was successfully updated"
  end
end
