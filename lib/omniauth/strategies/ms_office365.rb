require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Office365 < OmniAuth::Strategies::OAuth2
      option :name, :office365

      option :client_options, {
          site:          'https://login.microsoftonline.com',
          authorize_url: '/common/oauth2/v2.0/authorize',
          token_url:     '/common/oauth2/v2.0/token'
      }

      def authorize_params
        options.authorize_params[:scope] = 'offline_access openid User.Read Contacts.Read'
        super
      end

      uid { raw_info['id'] }

      info do
        {
          'email' => raw_info["userPrincipalName"],
          'name' => [raw_info["givenName"], raw_info["surname"]].join(' '),
          'nickname' => raw_info["displayName"]
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('https://graph.microsoft.com/v1.0/me').parsed
      end
    end
  end
end
