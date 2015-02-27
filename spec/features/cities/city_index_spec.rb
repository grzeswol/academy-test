include Warden::Test::Helpers
Warden.test_mode!

# Feature: City index page
#   As a user
#   I want to see a list of cities
#   So I can see all cities
feature 'City index page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User listed on index page
  #   Given I am signed in
  #   When I visit the city index page
  #   Then I see city name
  scenario 'user sees city name' do
    user = FactoryGirl.create(:user)
    city = FactoryGirl.create(:city)
    login_as(user, scope: :user)
    visit cities_path
    expect(page).to have_content city.name
  end

end
