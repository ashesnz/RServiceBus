require "../RServiceBus"


class HelloWorld
	attr_reader :name
	def initialize( name )
		@name = name
	end
end


0.upto(0) do |request_nbr|
	agent = RServiceBus_Agent.new().send(HelloWorld.new( "Hello World! " + request_nbr.to_s ), "hello", "helloResponse" )
end
