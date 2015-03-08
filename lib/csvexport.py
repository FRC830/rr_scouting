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
    "feeder_station_totes",
    "landfill_totes",
    "totes_stacked",
    "tote_height",
    "stacks_tipped",
    "bins_stacked",
    "bin_height",
    "coop",
    "noodles_scored",
    "step_containers",
    "score",
    "penalties",
    "comments",
]

def getlines(f):
    return list(filter(len, map(lambda line: line.rstrip('\r\n'), f.readlines())))

_export_lock = threading.Lock()
def export(data, path):
    with _export_lock:
        add_headers = False
        if not os.path.exists(path):
            add_headers = True
            contents = ''
        else:
            with open(path, 'r') as f:
                lines = getlines(f)
                if not len(lines) or not lines[0].startswith(fields[0]):
                    add_headers = True
                    contents = '\n'.join(lines) + '\n'
        if add_headers:
            with open(path, 'w') as f:
                writer = csv.DictWriter(f, fieldnames=fields, lineterminator='\n')
                writer.writeheader()
                f.write(contents)
        with open(path, 'a') as f:
            writer = csv.DictWriter(f, fieldnames=fields, lineterminator='\n')
            writer.writerow(data)
        lines = []
        with open(path, 'r') as f:
            lines = getlines(f)
        if len(lines) > 2 and lines[-1] == lines[-2]:
            with open(path, 'w') as f:
                f.write('\n'.join(lines[:-1]))
                f.write('\n')

def process(data):
    for f in fields:
        if f not in data:
            data[f] = 0
    return data
