require 'test_helper'

class SlugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slug = slugs(:one)
  end

  test "should get index" do
    get slugs_url
    assert_response :success
  end

  test "should get new" do
    get new_slug_url
    assert_response :success
  end

  test "should create slug" do
    assert_difference('Slug.count') do
      post slugs_url, params: { slug: { Category: @slug.Category, Company: @slug.Company, Details: @slug.Details, Duration: @slug.Duration, Expires: @slug.Expires, Image: @slug.Image, Logo: @slug.Logo, Rating: @slug.Rating, Starts: @slug.Starts, Title: @slug.Title, Views: @slug.Views, Website: @slug.Website } }
    end

    assert_redirected_to slug_url(Slug.last)
  end

  test "should show slug" do
    get slug_url(@slug)
    assert_response :success
  end

  test "should get edit" do
    get edit_slug_url(@slug)
    assert_response :success
  end

  test "should update slug" do
    patch slug_url(@slug), params: { slug: { Category: @slug.Category, Company: @slug.Company, Details: @slug.Details, Duration: @slug.Duration, Expires: @slug.Expires, Image: @slug.Image, Logo: @slug.Logo, Rating: @slug.Rating, Starts: @slug.Starts, Title: @slug.Title, Views: @slug.Views, Website: @slug.Website } }
    assert_redirected_to slug_url(@slug)
  end

  test "should destroy slug" do
    assert_difference('Slug.count', -1) do
      delete slug_url(@slug)
    end

    assert_redirected_to slugs_url
  end
end
