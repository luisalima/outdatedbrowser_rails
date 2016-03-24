require 'spec_helper'

describe 'static assets integration' do

  it 'provides require_outdatedbrowser.js on the asset pipeline' do
    visit '/assets/outdatedbrowser/require_outdatedbrowser.js'
    expect(page.text).to match(/outdatedBrowser/)
  end

  it 'provides outdatedBrowser.js on the asset pipeline' do
    visit '/assets/outdatedbrowser/outdatedbrowser.js'
    expect(page.text).to match(/outdatedBrowser/)
  end

  it 'provides outdatedBrowser.css on the asset pipeline' do
    visit '/assets/outdatedbrowser/outdatedbrowser.css'
    expect(page.text).to match(/Outdated Browser/)
  end

  it 'provides a partial with the div on the asset pipeline' do
    visit '/'
    expect(page).to have_selector('#outdated')
  end
end
