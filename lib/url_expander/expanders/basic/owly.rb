module UrlExpander
  module Expanders
    #
    # Expand ow.ly URLS
    # Usage:
    # client = UrlExpander::Client.new
    # client.expand("http://ow.ly/5EVkL")
    #
    class Owly < UrlExpander::Expanders::Basic
      PATTERN = %r'(http://ow\.ly(/[\w/]+))'
      attr_reader :parent_klass
      
      def initialize(short_url="", options={})
        @parent_klass = self.class
        super(short_url, options)
      end
      
      class Request
        include HTTParty
        base_uri 'ow.ly'
      end
    end
  end
end