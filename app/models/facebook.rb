class Facebook < ActiveRecord::Base
  require "koala"

  @@graph = Koala::Facebook::API.new(["CAAXNFfNO6MwBAHjZBzFVsle2zKbD1LxxYHmD6J19xNAZCA3iBUvxxervZCB2sMacqCGlo17kNZAm1mMhIC7XycfMwCYKOXcNaRZA8dRuXZB62SciqGZAoMcH9LkE5S7D87gqZBSGxWEoxEUAlEgtmrZB4GoZA7lWnZC8tYeII3wVWKEiK2pAE5vSDDIr45Fk8tz8bMClm8qaaYQ1PZA3NRf88s4t"])

  def self.page_feed
    @@graph.get_connection("477172595731068", "posts")
  end

  def self.page_albums
    @@graph.get_connection("477172595731068", 
      "albums",
      {fields: ['message', 'id', 'from', 'type',
        'picture', 'link', 'created_time', 
        'updated_time']})
  end

end
