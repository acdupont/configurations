
# use waflib.Logs.pprint for coloring
class LogStream(object):
	def __init__(self, color):
		self.color = color
	
	def write(self, text):
		waflib.Logs.pprint(self.color, text)
	
	def flush(self):
		pass

# create logger using LogStream above, using regular python log formatting
def createLogger(color):
	logger = logging.getLogger(color)
	if not len(logger.handlers):
		logger.setLevel(logging.DEBUG)

		handler = logging.StreamHandler(LogStream(color))
		handler.setFormatter(logging.Formatter('[%(pathname)s:%(lineno)d] %(message)s'))
		handler.setLevel(logging.DEBUG)
		logger.addHandler(handler)
	return logger


createLogger('CYAN')
createLogger('YELLOW')
createLogger('RED')
createLogger('GREEN')
createLogger('YELLOW')
createLogger('PINK')
createLogger('BLUE')
createLogger('CYAN')
createLogger('GREY')
