from iop import Message
from dataclasses import dataclass

@dataclass
class Msg(Message):
    message: str
