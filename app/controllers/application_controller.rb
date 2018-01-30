class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def books
    render haml: "Books"
  end
end
