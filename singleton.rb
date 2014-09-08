class Singleton

	def initialize
		puts "the current object id is #{self.object_id}"
	end

	@@instance = Singleton.new

	def self.instance
		return @@instance
	end

	def log(msg)
		puts "current object id is #{self.object_id}"
		puts "just log #{msg}"
	end

	private_class_method :new
end

Singleton.instance.log("hello")