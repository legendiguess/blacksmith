extends Timer

var orders_arrival_time

func restart():
	self.wait_time = orders_arrival_time
	self.start()
