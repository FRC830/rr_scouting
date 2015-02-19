def export(data):
    new_line = "\n"
    file = open("match_data.csv", "r")
    lines = file.read();
    file.close();
    if not lines:
        #there is no data in the file, do not add a newline
        new_line = ""
    with open("match_data.csv", "a") as save_file:
        d_to_write = str(order_data(data))[1:len(str(order_data(data)))-1].replace("'", "")
        save_file.write(new_line+d_to_write)
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
