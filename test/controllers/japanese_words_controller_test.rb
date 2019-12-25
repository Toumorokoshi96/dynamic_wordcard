require 'test_helper'

class JapaneseWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @japanese_word = japanese_words(:one)
  end

  test "should get index" do
    get japanese_words_url
    assert_response :success
  end

  test "should get new" do
    get new_japanese_word_url
    assert_response :success
  end

  test "should create japanese_word" do
    assert_difference('JapaneseWord.count') do
      post japanese_words_url, params: { japanese_word: { spell: @japanese_word.spell } }
    end

    assert_redirected_to japanese_word_url(JapaneseWord.last)
  end

  test "should show japanese_word" do
    get japanese_word_url(@japanese_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_japanese_word_url(@japanese_word)
    assert_response :success
  end

  test "should update japanese_word" do
    patch japanese_word_url(@japanese_word), params: { japanese_word: { spell: @japanese_word.spell } }
    assert_redirected_to japanese_word_url(@japanese_word)
  end

  test "should destroy japanese_word" do
    assert_difference('JapaneseWord.count', -1) do
      delete japanese_word_url(@japanese_word)
    end

    assert_redirected_to japanese_words_url
  end
end
