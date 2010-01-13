# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_leiden_session',
  :secret      => '8f6b6bd2a1b2c7d6e4e8004799f1f636c26023e8e394cfc6b441ee4088f4d1ca9a18e64d5be1cdf5d0b652aa08befef737837db0c1a19df3d31ae7c327103c1f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
