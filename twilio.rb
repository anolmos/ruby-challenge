require 'rubygems'
require 'twilio-ruby'
account_sid = "AC48be1fc68232d86a2715b9e59e90b1eb"
auth_token = "9f5e5362bda73f30b06adbf7024f323c"


@client = Twilio::REST::Client.new(account_sid, auth_token)
message = @client.account.message.create(
:from => "+16265379537",
:to => "+15622997072",
:body => "Hey!"
)

puts message.to

def ask
    "Ask the Magic 8-Ball a question!"
end

def message
    [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "Very doubtful"
    ]
end

def random_message
    answers[Random.rand(message.size)]
end

def shake_ball
    Array.new(1 + Random.rand(6))
end

def wait_for_user
    question = gets.chomp
    exit(0) if question == "q"
end
    
    while (true)
        wait_for_user
        puts
        puts shake_ball + " " + random_message
        puts
    end
end
