module Mailers
  class Welcome
    include Hanami::Mailer

    from    'from@example.com'
    to      'to@example.com'
    subject 'Hello'
  end
end
