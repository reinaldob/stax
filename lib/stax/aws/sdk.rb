module Stax
  module Aws
    class Sdk

      ## universal paginator for aws-sdk calls
      def self.paginate(thing)
        token = nil
        things = []
        loop do
          resp = yield(token)
          things += resp.send(thing)
          ## some apis use marker, some use token
          token = resp.respond_to?(:next_marker) ? resp.next_marker : resp.next_token
          break if token.nil?
        end
        things
      end
    end

  end
end