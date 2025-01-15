from bo import BO
from bp import BP

from msg import Msg

CLASSES = {
    'Python.BO': BO,
    'Python.BP': BP,
}

SCHEMAS = [Msg]

PRODUCTIONS = [{
    "Python.Production": {
        "@Name": "Python.Production",
        "@TestingEnabled": "true",
        "Item": [
            {
                "@Name": "Python.BO",
                "@ClassName": "Python.BO",
            },
            {
                "@Name": "Python.BP",
                "@ClassName": "Python.BP",
            },
            {
                "@Name": "ObjectScript.BP",
                "@ClassName": "ObjectScript.BP",
            }
        ]
    }
}]