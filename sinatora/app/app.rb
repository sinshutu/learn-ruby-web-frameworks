# frozen_string_literal: true

require 'sinatra'

configure do
  enable :logging
end

get '/' do
  logger.info 'ok'
  erb :index
end
