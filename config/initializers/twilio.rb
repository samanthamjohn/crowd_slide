twilio_id = ENV["TWILIO_APP_ID"]
twilio_token = ENV["TWILIO_AUTH_TOKEN"]

# set up a client to talk to the Twilio REST API
twilio_client = Twilio::REST::Client.new(twilio_id, twilio_token)


TWILIO_ACCOUNT = twilio_client.account

