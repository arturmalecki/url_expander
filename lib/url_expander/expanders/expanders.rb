$:.unshift(File.dirname(__FILE__))

require 'url_expander/expanders/basic'
require 'url_expander/expanders/api'
require 'url_expander/expanders/scrape'


module UrlExpander
  module Expanders
    autoload :Tinyurl, 'basic/tinyurl'
    autoload :Twurlnl, 'basic/twurlnl'
    autoload :Shrtst, 'basic/shrtst'
    autoload :Snipurl, 'basic/Snipurl'
    autoload :Adjix, 'basic/Adjix'
    autoload :Youtube, 'basic/Youtube'
    autoload :Tinycc, 'basic/Tinycc'
    autoload :Owly, 'basic/Owly'
    
    # Using API
    autoload :Bitly, 'api/Bitly'
    autoload :Budurl, 'api/Budurl'
    autoload :Cligs, 'api/Cligs'
    autoload :Isgd, 'api/Isgd'
    autoload :Googl, 'api/Googl'
    
    # Using Scrapper
    autoload :Qsrli, 'scrape/Qsrli'
    
  end
end