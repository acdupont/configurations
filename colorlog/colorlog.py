
import colorlog
import logging
import sys

colorlog.default_log_colors["DEBUG"] = "cyan"

handler = logging.StreamHandler(sys.stdout)
handler.setFormatter(colorlog.ColoredFormatter("[%(log_color)s%(levelname)s %(purple)s%(filename)s:%(green)s%(lineno)d:%(white)s%(funcName)s%(log_color)s] %(message)s"))
handler.setLevel(logging.DEBUG)

logger = logging.getLogger("debugger")
logger.setLevel(logging.DEBUG)
logger.addHandler(handler)
