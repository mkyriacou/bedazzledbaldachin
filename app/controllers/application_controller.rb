class ApplicationController < ActionController::Base
  protect_from_forgery
  include EventsHelper
  include TwiliosHelper
end
