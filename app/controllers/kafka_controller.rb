class KafkaController < ApplicationController
    def testsend
        KAFKA.deliver_message("Hello, World!", topic: "twitterdata")
    end
end
