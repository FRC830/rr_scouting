import csv, os, threading

fields = [
    "match_id",
    "team_id",
    "auton_start",
    "auton_robot_move",
    "auton_tote_move",
    "auton_container_move",
    "auton_tote_stack",
    "auton_other",
    "bottom_stacker",
    "top_stacker",
    "bulldozer",
    "other_capabilities",
    "totes_stacked",
    "tote_height",
    "bins_stacked",
    "bin_height",
    "coop",
    "push_noodle",
    "noodle_from_human",
    "noodle_in_bins",
    "step_containers",
    "score",
    "penalties",
    "comments",
]

_export_lock = threading.Lock()
def export(data, path):
    with _export_lock:
        add_headers = False
        if not os.path.exists(path):
            add_headers = True
            contents = ''
        else:
            with open(path, 'r') as f:
                lines = list(filter(len, map(lambda line: line.rstrip('\r\n'), f.readlines())))
                if not len(lines) or not lines[0].startswith(fields[0]):
                    add_headers = True
                    contents = '\n'.join(lines) + '\n'
        if add_headers:
            with open(path, 'w') as f:
                writer = csv.DictWriter(f, fieldnames=fields)
                writer.writeheader()
                #f.write(','.join(fields) + '\n')
                f.write(contents)
        with open(path, 'a') as f:
            writer = csv.DictWriter(f, fieldnames=fields)
            writer.writerow(data)

def process(data):
    for f in fields:
        if f not in data:
            data[f] = 0
    return data
