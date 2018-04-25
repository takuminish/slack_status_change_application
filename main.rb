4# coding: utf-8
#require 'slack-ruby-client'
require 'http'
require 'json'

def status_change(emoji,token)
  response = HTTP.post(
    "https://slack.com/api/users.profile.set",
    params: {
      token: token,
      profile: JSON.dump({status_emoji: emoji})
    }
  )
                          
puts JSON.pretty_generate(JSON.parse(response.body))
end



                    


