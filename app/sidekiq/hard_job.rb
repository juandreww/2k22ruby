class HardJob
  include Sidekiq::Job

  HardJob.perform_async('bob', 5)

  def perform(name, count)
    puts name, count
  end
end
