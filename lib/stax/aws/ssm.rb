module Stax
  module Aws
    class Ssm < Sdk

      class << self

        def client
          @_client ||= ::Aws::SSM::Client.new
        end

        def instances(stack)
          client.describe_instance_information(filters: [{key: 'tag:aws:cloudformation:stack-name', values: [stack]}]).instance_information_list
        end

        def run(opt)
          client.send_command(opt).command
        end

        def commands
          client.list_commands.commands
        end

        def invocation(id)
          client.list_command_invocations(command_id: id, details: true).command_invocations
        end

      end

    end
  end
end