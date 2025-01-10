from bo import BO

from msg import Msg

CLASSES = {
    'Python.BO': BO,
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
            }
        ]
    }
}]