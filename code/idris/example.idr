module example

data sleep = awake | asleep

wakeup: sleep -> sleep
wakeup asleep = awake

fallasleep: sleep -> sleep
fallasleep awake = asleep

