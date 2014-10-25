class Spinach::Features::PublicSnippets < Spinach::FeatureSteps
  include SharedAuthentication
  include SharedPaths
  include SharedSnippet

  step 'I should see snippet "Personal snippet one"' do
    page.should have_no_xpath("//i[@class='public-snippet']")
  end

  step 'I visit snippet page "Personal snippet one"' do
    visit snippet_path(snippet)
  end

  def snippet
    @snippet ||= PersonalSnippet.find_by!(title: "Personal snippet one")
  end
end
