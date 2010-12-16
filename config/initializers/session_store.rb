# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cooletivo_session',
  :secret      => '871bd9cb7442b9ca3c43bf8f37853c4534b0301c5eb7c95996177f0320a0c9375215287b388383588cb3224431c4e412feb13634f7a97e2e4c9c93fa2b690b87'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
