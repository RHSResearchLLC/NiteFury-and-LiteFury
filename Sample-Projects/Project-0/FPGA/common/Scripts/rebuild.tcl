# Only need to run this when the project.gen folder is deleted

# The block diagram wrapper is stored in .gen, which isn't under version control. So we remake it
make_wrapper -files [get_files ./project.srcs/sources_1/bd/Top/Top.bd] -top

# Now you need to refresh heirarchy, manually. Ugh
close_project
open_project project.xpr
update_compile_order -fileset sources_1
update_compile_order -fileset sources_1

# Run regular build
source ../../common/Scripts/build.tcl

