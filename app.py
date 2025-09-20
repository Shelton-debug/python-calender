import time 
print('stopwatch started press ctrl + c to stop')
start = time.time()
try:
    while True:
        elapsed = int(time.time() - start)
        mins, secs  = divmod(elapsed, 60)
        print(f'\rElapsed time: {mins:02d}:{secs:02d}', end='')
        time.sleep(1)
except KeyboardInterrupt:
    print(f'\nStopwatch stopped. Total time: {mins:02d}:{secs:02d}')