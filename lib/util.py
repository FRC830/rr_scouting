import sys, threading, time

class LoggingWrapper:
    def __init__(self, fd):
        self.fd = fd
        self.lock = threading.Lock()
        self.new_line = True
        #fd.write = lambda *args: self.write(*args)
    def write(self, *args):
        if len(args) >= 1:
            with self.lock:
                if self.new_line:
                    self.fd.write(time.strftime('[%d/%b/%Y %H:%M:%S %p] '))
                self.fd.write(*args)
            self.new_line = args[-1].endswith('\n') if isinstance(args[-1], str) else True

    def __getattr__(self, attr):
        return getattr(self.fd, attr)

def logging_init():
    sys.stdout = LoggingWrapper(sys.stdout)
    sys.stderr = LoggingWrapper(sys.stderr)
