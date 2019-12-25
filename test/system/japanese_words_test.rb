require "application_system_test_case"

class JapaneseWordsTest < ApplicationSystemTestCase
  setup do
    @japanese_word = japanese_words(:one)
  end

  test "visiting the index" do
    visit japanese_words_url
    assert_selector "h1", text: "Japanese Words"
  end

  test "creating a Japanese word" do
    visit japanese_words_url
    click_on "New Japanese Word"

    fill_in "Spell", with: @japanese_word.spell
    click_on "Create Japanese word"

    assert_text "Japanese word was successfully created"
    click_on "Back"
  end

  test "updating a Japanese word" do
    visit japanese_words_url
    click_on "Edit", match: :first

    fill_in "Spell", with: @japanese_word.spell
    click_on "Update Japanese word"

    assert_text "Japanese word was successfully updated"
    click_on "Back"
  end

  test "destroying a Japanese word" do
    visit japanese_words_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Japanese word was successfully destroyed"
  end
end
