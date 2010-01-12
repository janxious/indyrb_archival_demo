# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_indyrb_archival_demo_session',
  :secret      => 'f9168d5d5e858b11e938799ae3b156210909b7b2e8acacb986337b7b03d41252b49b6beb918e83639f6754791cbc667377a4fe7377334bb7766c5e7cc09dea05'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
