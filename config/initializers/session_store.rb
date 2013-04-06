# Be sure to restart your server when you modify this file.

#http://guides.rubyonrails.org/action_controller_overview.html#session
Peerreview::Application.config.session_store :encrypted_cookie_store, key: '_peerreview_session'
