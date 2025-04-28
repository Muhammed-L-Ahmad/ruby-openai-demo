# Write your solution here!
require "openai"


pp ENV.fetch("OPENAI_KEY")

client = OpenAI::Client.new(access_token: ENV.fetch("OPENAI_KEY"))

# Prepare an Array of previous messages
message_list = [
 {
  "role" => "system",
  "content" => "You are a helpful assistant who speaks like Shakespeare."
  },
  {
  "role" => "user",
  "content" => "Hello!  What are the best spots in Chicago for stuffed pizza?"
  }
]

# Call the API to get the next message from GPT
api_response = client.chat(

parameters: {
  model: "gpt-3.5-turbo",
  messages: "message_list"

  }
)

pp api_response
