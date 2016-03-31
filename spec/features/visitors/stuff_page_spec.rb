# Feature: 'Stuff' page
#   As a visitor
#   I want to visit a 'stuff' page
#   So I can learn more about the website
RSpec.feature 'Stuff page' do

  # Scenario: Visit the 'stuff' page
  #   Given I am a visitor
  #   When I visit the 'stuff' page
  #   Then I see "Stuff"
  scenario 'Visit the stuff page' do
    visit 'pages/stuff'
    expect(page).to have_content 'Stuff'
  end

end
