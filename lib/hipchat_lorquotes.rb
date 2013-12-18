lib = File.expand_path('..', __FILE__)
require "#{lib}/hipchat_lorquotes/version"

module HipchatLorquotes
  require 'hipchat'
  require 'httparty'

  def self.get_quote
    @get = HTTParty.get('http://www.lorquotes.ru/fortraw.php')
    utf8ized_get = @get.parsed_response.force_encoding('koi8-r').encode('utf-8').split('%')
    random_end = utf8ized_get.count
    quoten = rand(1..random_end)
    return utf8ized_get[quoten].gsub("\n", '<br>')
  end

  def self.post_lorquote
    hipchat_api = ENV['HIPCHAT_API_KEY']
    hipchat_room = ENV['HIPCHAT_ROOM']
    client = HipChat::Client.new(hipchat_api, :api_version => 'v2')
    quote = self.get_quote
    client[hipchat_room].send('LORQuotes', quote)
  end
end
