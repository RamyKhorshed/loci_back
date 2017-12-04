class Api::V1::SnippetsController < ActionController::API
  def create
      @snippet = Snippet.create(title: params["title"], content: params["content"], user_id: params["user_id"])
      render json: @snippet.to_json
  end
end
