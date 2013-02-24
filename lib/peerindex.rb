require 'faraday'
require 'json'

require 'peerindex/version'

module PeerIndex
  
  class << self
    
    attr_accessor :apiKey
    
    def new(apiKey)
      @apiKey = apiKey
    end
    
    def get(path, params)      
          
      response = connection.get(path) do |request|
        request.params = params
        request.params['api_key'] = @apiKey
      end
      
      response.status
      
      JSON.parse response.body
      
    end
    
    def actorBasic(*args)
      get("actor/basic", *args)
    end
    
    def actorExtended(*args)
      get("actor/extended", *args)
    end
    
    def actorTopic(*args)
      get("actor/topic", *args)
    end
    
    def actorGraph(*args)
      get("actor/graph", *args)
    end    
    
  end  
  
  module Connection
    def connection
              
      @connection ||= begin
        conn = Faraday.new('https://api.peerindex.com/1/')
        
        conn
      end
    end
  end
  
  extend Connection
  
end