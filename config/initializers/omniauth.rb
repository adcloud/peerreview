require 'omniauth-openid'
require 'openid'
require 'openid/store/filesystem'
require 'gapps_openid'


# http://matt.aimonetti.net/posts/2013/01/30/omniauth-and-google-apps/
# https://github.com/intridea/omniauth/wiki/OpenID-and-Google-Apps

OmniAuth.config.full_host = "http://localhost:3000"

OpenID.fetcher.ca_file = "/absolute/path/to/ssl_cacert.pem"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_id,  :name => 'admin',
                      :identifier => 'https://www.google.com/accounts/o8/site-xrds?hd=adcloud.com',
                      :store => OpenID::Store::Filesystem.new('/tmp')
end