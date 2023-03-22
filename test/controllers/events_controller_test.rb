require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create" do
    assert_difference "Event.count", 1 do
      post "/events.json", params: { name: "lake", location: "nebraska", start_time: "2023-04-29 10:00:00", event_type: "dance", child_id: Child.first.id }
      assert_response 200
    end
  end
end
