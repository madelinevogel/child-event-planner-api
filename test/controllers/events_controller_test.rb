require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/events.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Event.count, data.length
  end

  test "create" do
    assert_difference "Event.count", 1 do
      post "/events.json", params: { name: "lake", location: "nebraska", start_time: "2023-04-29 10:00:00", event_type: "dance", child_id: Child.first.id }
      assert_response 200
    end
  end

  test "show" do
    get "/events/#{Event.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "location", "start_time", "event_type", "child_id", "created_at", "updated_at"], data.keys
  end
end
