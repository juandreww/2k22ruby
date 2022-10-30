class TapDanceConsumer < Racecar::Consumer
  subscribes_to "comments"
  subscribes_to "activity"
  # subscribes_to "activity", start_from_beginning: false

  # def initialize
  #   @push_service = PushSer/vice.new
  # end

  def process(message)
    puts "Received message: #{message.value}"
  end
end
