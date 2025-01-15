from iop import BusinessOperation
from msg import Msg

class BO(BusinessOperation):
    def on_init(self):
        self.log_to_console = True
    def on_python_message(self, message: Msg):
        self.log_info("Received message: %s" % message)
        return message