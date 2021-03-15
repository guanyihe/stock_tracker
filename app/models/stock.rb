class Stock < ApplicationRecord

  #self=> make it as a class method. it doesn't have to depend on instance var
  #you can call the method directly 
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
                                  endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol)
    #return client.price(ticker_symbol)
  end
end
