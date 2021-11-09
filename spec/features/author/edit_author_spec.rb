require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should exist" do
    @alan = FactoryBot.create :author

    visit edit_author_path(@alan)
  end

  it "should update according to input" do
    @alan = FactoryBot.create :author

    visit edit_author_path(@alan)

    page.fill_in 'author[homepage]', with: 'https://en.wikipedia.org/wiki/Alan_Turing'

    find('input[type="submit"]').click

    @alan.reload

    expect(@alan.homepage).to eq("https://en.wikipedia.org/wiki/Alan_Turing")
  end
end