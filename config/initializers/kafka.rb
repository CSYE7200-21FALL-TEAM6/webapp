require "kafka"

KAFKA = Kafka.new([ENV['KAFKA0_IP'] + ":9092", ENV['KAFKA1_IP'] + ":9092", ENV['KAFKA2_IP'] + ":9092"], client_id: "twitter")