class TwiliosController < ApplicationController
include TwiliosHelper

require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'
# require 'twilios_helper'

  def index
    @phone = params[:From]
    @player = Player.find_by_phone(@phone)
    # @city = params[:FromCity]
    # @state = params[:FromState]
    @reply = parse_message(params[:From], params[:Body])

    render 'index.xml.erb', :content_type => 'text/xml'
  end
end
