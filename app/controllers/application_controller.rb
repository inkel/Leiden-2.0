# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  protected

  # HTTP Basic Authentication

  HTTP_REALM = ENV['HTTP_REALM'] || 'Leiden 2.0 backend'
  HTTP_USER  = ENV['HTTP_USER'] || 'admin'
  HTTP_PASS  = ENV['HTTP_PASS'] || 'admin'

  def authenticate
    authenticate_or_request_with_http_basic(HTTP_REALM) do |username, password|
      HTTP_USER == username && HTTP_PASS == password
    end
  end
end
