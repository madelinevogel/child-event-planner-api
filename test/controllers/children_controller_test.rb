require "test_helper"

class ChildrenControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/children.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Child.count, data.length
  end

  test "create" do
    assert_difference "Child.count", 1 do
      post "/children.json", params: { name: "lake", image: "image", user_id: User.first.id }
      assert_response 200
    end
  end

  test "show" do
    get "/children/#{Child.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "image", "user_id", "created_at", "updated_at"], data.keys
  end
end
