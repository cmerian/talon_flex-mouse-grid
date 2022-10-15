-

# Grid
flex grid: user.flex_grid_place_window()
flex grid screen: user.flex_grid_activate()
flex grid screen <number>: user.flex_grid_select_screen(number)
[flex] grid close:
    user.flex_grid_deactivate()
    user.flex_grid_points_toggle(0)
    user.flex_grid_boxes_toggle(0)

# Points
points: user.flex_grid_points_toggle(1)
points close: user.flex_grid_points_toggle(0)
point <user.word> [<number>]: user.flex_grid_go_to_point(word, number or 1, -1)
point click <user.word> [<number>]: user.flex_grid_go_to_point(word, number or 1, 0)
point righty <user.word> [<number>]: user.flex_grid_go_to_point(word, number or 1, 1)

# Points mapping
remap:
    user.flex_grid_place_window()
    user.flex_grid_points_toggle(1)
map <user.word>: user.flex_grid_map_point_here(word)
map <user.word> <user.letter>+: user.flex_grid_map_points_by_letter(word, letter_list)
map <user.word> box <number> [mark <number>]*: user.flex_grid_map_points_by_box(word, number_list)
map <user.word> box <number> past <number>: user.flex_grid_map_points_by_box_range(word, number_list)
unmap <user.word>: user.flex_grid_unmap_point(word)
unmap everything: user.flex_grid_unmap_point("")

# Boxes
boxes: user.flex_grid_find_boxes()
box <number>: user.flex_grid_go_to_box(number or 1)
boxes close: user.flex_grid_boxes_toggle(0)
