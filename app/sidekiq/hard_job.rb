class HardJob
  include Sidekiq::Job

  def perform(name, count)
    puts name, count
  end
end
