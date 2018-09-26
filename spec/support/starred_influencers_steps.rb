module StarredInfluencersSteps
  def visit_starred_influencer_page
    visit('/starred_influencers')
  end

  def should_have_suggested_influencers_header
    expect(page).to have_content('Suggested Influencers')
  end
end
