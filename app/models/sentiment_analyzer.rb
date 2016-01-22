require 'net/http'

class SentimentAnalyzer < ActiveRecord::Base
  SENTIMENT_ANALYZER_URL = 'https://russiansentimentanalyzer.p.mashape.com/rsa/sentiment/polarity/json/'
  ANALYZER_URI = URI(SENTIMENT_ANALYZER_URL)

  def self.analyze(text)
    request = Net::HTTP::Post.new(ANALYZER_URI)
    request['X-Mashape-Key'] = '43dvDjcWRWmsh6Zf8juVR6dmjZVwp1YuHfqjsn2prBDhAPMhqK'
    request['Content-Type'] = 'application.json'
    request['Accept'] = 'text/plain'
    request.body = { text: text, output_format: 'json' }.to_json
    
    http = Net::HTTP.new(ANALYZER_URI.hostname, ANALYZER_URI.port)
    http.use_ssl = true
    response = http.request(request)
    JSON.parse(response.body)['sentiment']
  end
end
