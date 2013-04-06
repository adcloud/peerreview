require 'omniauth-google-apps'

# http://matt.aimonetti.net/posts/2013/01/30/omniauth-and-google-apps/
# https://github.com/intridea/omniauth/wiki/OpenID-and-Google-Apps

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_apps,  name: 'admin', domain: 'adcloud.com'
end