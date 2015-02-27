include Warden::Test::Helpers
Warden.test_mode!

# Feature: City show page
#   As a user
#   I want to visit city page
#   So I can see city data
feature 'City show page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User sees city page
  #   Given I am signed in
  #   When I visit the city show page
  #   Then I see city name
  scenario 'user sees city name' do
    user = FactoryGirl.create(:user)
    city = FactoryGirl.create(:city)
    login_as(user, :scope => :user)
    visit city_path(city)
    expect(page).to have_content 'TestCity'
    expect(page).to have_content city.name
  end
end
