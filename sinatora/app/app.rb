# frozen_string_literal: true

require 'sinatra'
require 'mail'

Mail.defaults do
  # to mailcatcher
  delivery_method :smtp, address: 'localhost', port: 1025
end

configure do
  enable :logging
end

get '/' do
  logger.info 'ok'
  erb :index
end

post '/mail' do
  mail = Mail.new do
    from    'sample@example.com'
    to      'sample@example.com'
    subject 'This is a test email'
    body    '本文'
  end

  logger.info mail.to_s
  mail.deliver!

  redirect to('/')
end
