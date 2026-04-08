import re
import time

start = time.time()
result = re.search(r'(a+)*b$', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba')
elapsed = time.time() - start
print(f"result: {result is not None}")
print(f"elapsed: {elapsed:.6f}s")
