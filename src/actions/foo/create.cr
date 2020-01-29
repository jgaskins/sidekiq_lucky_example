require "../../workers/*"

class Foo::Create < ApiAction
  # include Api::Auth::SkipRequireAuthToken

  post "/foo" do
    UpdateWorker.async.perform(member_id: "abc123")
    plain_text "Render something in Foo::Create"
  end
end
