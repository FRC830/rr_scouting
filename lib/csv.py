import pickle, sqlite3
# def db_save(path, data):
    # c = None
    # try:
        # if not isinstance(path, str):
            # raise ValueError
        # conn = sqlite3.connect(path)
        # c = conn.cursor()
        # c.execute('create table if not exists "data-table" (data text)')
        # c.execute('insert into "data-table" values (?)', pickle.dumps(data))
        # conn.commit()
    # finally:
        # if c:
            # c.close()

def export(data):
    with open("match_data.csv", "a") as save_file:
        d_to_write = str(order_data(data))[1:len(str(order_data(data)))-1].replace("'", "")
        save_file.write("\n"+d_to_write)#To Do: make this not put a new line before the first line of the file
        print(d_to_write)
    print("Data saved!")
        

def order_data(dict):
    order = ["match_id", "team_id", "auton_start", "auton_robot_move", "auton_tote_move", "auton_container_move", "auton_tote_stack", "bottom_stacker",
             "top_stacker", "bulldozer", "other_capabilities", "totes_stacked", "tote_height", "bins_stacked", "bin_height", "coop", 
             "push_noodle", "noodle_pickup", "noodle_from_human", "noodle_in_bins", "step_containers", "score", "penalties", "comments"]
    final_data = [0 for i in range(len(order))]
    for key in dict:
        try:
            pos = order.index(key)
            final_data[pos] = dict[key]
        except ValueError:
            pass
    return final_data
