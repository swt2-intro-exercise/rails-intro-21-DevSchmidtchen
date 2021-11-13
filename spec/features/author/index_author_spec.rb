require 'rails_helper'

describe "Show authors index page", type: :feature do
  it "should exist" do
    visit "/authors/"
  end

  it "should contain a link to create new authors" do
    visit "/authors/"

    expect(page).to have_link 'New', href: new_author_path
  end
end