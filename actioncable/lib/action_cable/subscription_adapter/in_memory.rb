module ActionCable
  module SubscriptionAdapter
    class InMemory < Base # :nodoc:
      def broadcast(channel, payload)
        @logger.error "Called #broadcast with channel=#{channel} and payload=#{payload}"
      end

      def subscribe(channel, callback, success_callback = nil)
        @logger.error "Called #subscribe with channel=#{channel} and callback=#{callback} and success_callback=#{success_callback}"
      end

      def unsubscribe(channel, callback)
        @logger.error "Called #subscribe with channel=#{channel} and callback=#{callback}"
      end
    end
  end
end
