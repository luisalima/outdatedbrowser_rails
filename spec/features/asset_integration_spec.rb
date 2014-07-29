require 'spec_helper'

describe 'static assets integration' do
  it 'provides outdatedBrowser.js on the asset pipeline' do
    visit '/assets/outdatedbrowser/outdatedBrowser.js'
    expect(page.text).to match(/outdatedBrowser/)
  end

  it 'provides require_outdatedbrowser.js on the asset pipeline' do
    visit '/assets/outdatedbrowser/require_outdatedbrowser.js'
    expect(page.text).to match(/outdatedBrowser/)
  end

  it 'provides outdatedBrowser.css on the asset pipeline' do
    visit '/assets/outdatedbrowser/outdatedBrowser.css'
    expect(page.text).to match(/Outdated Browser/)
  end
end
