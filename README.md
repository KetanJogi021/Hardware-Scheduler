# Hardware-Scheduler

A hardware scheduler was designed based on Earliest Deadline First (EDF) scheduling policy. There are three main components of the scheduler 1) Task queue 2) Priority multiplexer 3) Queue controller. 
The task queue consists of identical task queue blocks, which consists of deadline value, priority, task ID, control logic for enqueue, dequeue, remove, active and block operation. The priority multiplexer selects the task with highest priority among all the ready tasks and the queue controller takes care of sorting the task queue according to the priority of the tasks when new task is added or deleted.
