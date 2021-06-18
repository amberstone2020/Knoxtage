require "application_system_test_case"

class GigsTest < ApplicationSystemTestCase
  setup do
    @gig = gigs(:one)
  end

  test "visiting the index" do
    visit gigs_url
    assert_selector "h1", text: "Gigs"
  end

  test "creating a Gig" do
    visit gigs_url
    click_on "New Gig"

    fill_in "Artist name", with: @gig.artist_name
    fill_in "Gig comments", with: @gig.gig_comments
    fill_in "Gig genre", with: @gig.gig_genre
    fill_in "Gig tickets", with: @gig.gig_tickets
    fill_in "Gig venue", with: @gig.gig_venue
    fill_in "Gig when", with: @gig.gig_when
    click_on "Create Gig"

    assert_text "Gig was successfully created"
    click_on "Back"
  end

  test "updating a Gig" do
    visit gigs_url
    click_on "Edit", match: :first

    fill_in "Artist name", with: @gig.artist_name
    fill_in "Gig comments", with: @gig.gig_comments
    fill_in "Gig genre", with: @gig.gig_genre
    fill_in "Gig tickets", with: @gig.gig_tickets
    fill_in "Gig venue", with: @gig.gig_venue
    fill_in "Gig when", with: @gig.gig_when
    click_on "Update Gig"

    assert_text "Gig was successfully updated"
    click_on "Back"
  end

  test "destroying a Gig" do
    visit gigs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gig was successfully destroyed"
  end
end
