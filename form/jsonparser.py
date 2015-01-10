import json
import os
import re

class JsonFile(dict):
    path = None
    def __init__(self, path=None, touch=False, **kwargs):
        super(JsonFile, self).__init__(**kwargs)
        if path is not None:
            self.load(path, touch=touch)

    def load(self, path=None, touch=False):
        if path is None:
            path = self.path
        if touch and not os.path.exists(path):
            open(path, 'w').close()
        with open(path, 'r') as f:
            contents = f.read()
            self.clear()
            if re.search(r'\S', contents):
                # File has non-whitespace contents
                self.update(json.loads(contents))
        self.path = path
        return self

    def save(self, path=None):
        if path is None:
            path = self.path
        with open(path, 'w') as f:
            json.dump(self, f, indent=4)
        return self
