module Observable
	attr_accessor :state

	def attachObserver(o)
		@observers ||= []
		@observers << o if !@observers.include?(o)
	end

	def removeObserver(o)
		@observers.delete(o)
	end

	def state=(s)
		@state = s
		@observers.each do |o|
			o.update(self)
		end
	end
end

module Observer
	def update(o)
		raise 'Implement this!'
	end
end

class QueenAnt
	include Observable
end

class WorkerAnt
	include Observer

	def update(o)
		p "I am workerAnt #{self.object_id}. Queen has changed state to #{o.state}!"
	end
end

queen = QueenAnt.new

worker1 = WorkerAnt.new
worker2 = WorkerAnt.new
worker3 = WorkerAnt.new

queen.attachObserver(worker1)
queen.attachObserver(worker2)

queen.state = "sleeping"
queen.state ="awake"

