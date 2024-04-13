mode: command
-
# save a mouse position to a spot name
spot save <user.word> <number_small>: user.save_spot("{win.title()}{word}{number_small}")

# save a mouse position to a spot name
spot save <user.word>: user.save_spot("{win.title()}{word}")

# click a saved spot then return the cursor to its prior position
spot [(click|touch)] <user.word>: user.move_to_spot("{win.title()}{word}")

spot [(click|touch)] <user.word> <number_small>: user.move_to_spot("{win.title()}{word}{number_small}")

# move the cursor to a saved spot
spot click <user.word>: user.click_spot("{win.title()}{word}")
spot click <user.word> <number_small>: user.click_spot("{win.title()}{word}{number_small}")

# hold left click then move the cursor to a saved spot
spot drag <user.text>: user.drag_spot(user.text)
spot swipe <user.text>: user.drag_spot(user.text, 1)

# deletes all current spots (does not alter the cached dictionary of spots)
spot clear all: user.clear_spot_dictionary()

# delete a specific spot (does not alter the cached dictionary of spots)
spot clear <user.word>: user.clear_spot("{win.title()}{word}")
spot clear <user.word> <number_small>: user.clear_spot("{win.title()}{word}{number_small}")

# display a list of all active spot names
spot list [all]: user.list_spot()

# Close the list of active spot names. including 'clothes' because that's commonly misheard by talon
spot (close|clothes)$: user.close_spot_list()

# displays a small colored circle at the location of each saved spot
spot [toggle] heatmap: user.toggle_spot_heatmap()
