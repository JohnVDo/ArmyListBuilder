# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Depots_session',
  :secret      => '32ec6031242e6decb6cb73f113d24912892251bf2cd976712607a03849884fef57bed9d01d85d80fec076fb720fdcb5c2abcfc4755e20c18e3c68ecc922ca267'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
