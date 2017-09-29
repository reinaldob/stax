require 'thor'

require 'awful'
require 'awful/cloudformation'

require 'stax/aws/sdk'
require 'stax/aws/cfn'

require 'stax/staxfile'
require 'stax/base'
require 'stax/cli'
require 'stax/stack'
require 'stax/cfn'
require 'stax/subcommand'

require 'stax/git'
require 'stax/docker'

require 'stax/mixin/ec2'
require 'stax/mixin/alb'
require 'stax/mixin/elb'
require 'stax/mixin/sg'
require 'stax/mixin/s3'

require 'stax/asg'
require 'stax/lmi'
require 'stax/ecs'
require 'stax/kms'
require 'stax/sqs'
require 'stax/cfer'
require 'stax/keypair'
require 'stax/ssm'