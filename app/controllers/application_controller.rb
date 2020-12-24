class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def cart 
    session[:cart] ||= [] 
  end

  helper_method :cart # need to explicitly set helper method to give view access
  # not enough to do so just in the tests (see products_index_spec, line 10)
end
