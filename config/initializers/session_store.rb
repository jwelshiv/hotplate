# Be sure to restart your server when you modify this file.

Hotplate::Application.config.session_store :cookie_store,
  key:'_hotplate_session',
  secret:'b8d5a8f6e402a8130346c5ddac3df0dcdc5e19c1198a17fadc6a6f075f57d5fd64adf86364056d0d4b9728d32a39d497292e32d4cbf61283d8d8d0ad50a738e2'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Hotplate::Application.config.session_store :active_record_store
