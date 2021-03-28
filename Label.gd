extends CanvasLayer


var timer
var seconds: int = 0
var minutes: int = 0

func _ready():
   timer = Timer.new()
   timer.connect("timeout",self,"_on_timer_timeout") 
   timer.set_wait_time(5) #value is in seconds: 600 seconds = 10 minutes
   timer.set_one_shot(false)
   add_child(timer) 
   timer.start() 


func _on_timer_timeout():
	seconds += 1
	if seconds == 60:
	  seconds = 0
	  minutes += 1
	if minutes == 60: minutes  = 0
	print( minutes, " : ", str(seconds).pad_zeros(2) )
	$Label.set_text(str(minutes, " : ", str(seconds).pad_zeros(2)))
