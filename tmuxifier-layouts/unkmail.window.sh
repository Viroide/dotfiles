# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/proyectos/unkmail/"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "unkmail"

# Split window into panes.
split_v 30
split_h 50

# Run commands.
run_cmd "activar && cd unkmail"
run_cmd "activar && cd unkmail && ./manage.py runserver" 1     # runs in active pane 1
run_cmd "cd unkmail gulp watch" 2  # runs in pane 2


# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

# Set active pane.
select_pane 0
