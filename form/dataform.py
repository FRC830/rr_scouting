import jsonparser

class Form:
    def __init__(self):
        self.sections = []

    def load(self, path):
        data = dict(jsonparser.JsonFile(path))
        for section in data['sections']:
            print(section)

