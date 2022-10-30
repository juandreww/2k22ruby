class TapDanceConsumer < Racecar::Consumer
  subscribes_to "comments"
  subscribes_to "activity"
  # subscribes_to "activity", start_from_beginning: false

  # def initialize
  #   @push_service = PushSer/vice.new
  # end

  def process(message)
    pageview = JSON.parse(message.value)
    ip_address = pageview.fetch("ip_address")

    country = "Indonesia"

    puts "Received message: #{message.value}"
  end

  # def process(messages)
  #   puts "Aku cinta Indonesia"
  #   # puts YAML::dump(messages)
  #   # puts YAML::dump(messages.topic)
  #   puts messages.headers
  #   file_name = [
  #     messages.topic,
  #     messages.partition,
  #     messages.offset,
  #   ].join("-")

  #   File.open(file_name, "w") do |file|
  #     # messages.each do |message|
  #       file << messages.value
  #     # end
  #   end
  # end
end
