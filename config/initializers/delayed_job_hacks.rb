NewRelic::Agent::Samplers::DelayedJobSampler.prepend(
  Module.new {
    def count(query)
      puts "#{Time.now} Fetching count #{query.inspect}..."
      t = super
      puts "#{Time.now} Count: #{t}"
      t
    rescue Exception => e # rubocop:disable Lint/RescueException
      puts e.inspect
      raise
    end
  }
)

NewRelic::Agent::EventLoop.prepend(
  Module.new {
    # trigger polling much more frequently than normal, to help with reproductions
    def fire_every(interval, event)
      puts "Firing event #{event} every #{interval / 100} seconds."
      super(interval / 100, event)
    end
  }
)
