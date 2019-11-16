cmake_minimum_required(VERSION 3.0)
project(spi-loader_project)


###############################################################################
## CMAKE config ###############################################################
###############################################################################


###############################################################################
## Project sources ############################################################
###############################################################################

file(GLOB_RECURSE sources lib/src/*.c lib/common/*.c  app-linux/*.c)

###############################################################################
## target definitions #########################################################
###############################################################################

# add the data to the target, so it becomes visible in some IDE
add_executable(spi-loader ${sources} app-linux/Main.cpp)

# just for spi-loader add some compiler flags
target_compile_options(spi-loader PUBLIC -Wall -Wextra -Wno-unused-function -g)

# this lets me include files relative to the root src dir with a <> pair
target_include_directories(spi-loader PUBLIC app-linux/config lib/common lib/src)

# spi-loader needs C++17.
# Needed for static constexpr in header only 
set_target_properties(spi-loader PROPERTIES
			 		 CXX_STANDARD 11
					 CMAKE_CXX_STANDARD_REQUIRED ON
			 		 CXX_EXTENSIONS OFF
			 		 )

###############################################################################
## dependencies ###############################################################
###############################################################################

target_link_libraries(spi-loader PUBLIC
  # here you can add any library dependencies
)


###############################################################################
## packaging ##################################################################
###############################################################################

# all install commands get the same destination. this allows us to use paths
# relative to the executable.
install(TARGETS spi-loader DESTINATION spi-loader_destination)

# this is basically a repeat of the file copy instruction that copies the
# resources in the build directory, but here we tell cmake that we want it
# in the package
install(DIRECTORY resources DESTINATION spi-loader_destination)

# now comes everything we need, to create a package
# there are a lot more variables you can set, and some
# you need to set for some package types, but we want to
# be minimal here
set(CPACK_PACKAGE_NAME "Myspi-loader")
set(CPACK_PACKAGE_VERSION "1.0.0")

# we don't want to split our program up into several things
set(CPACK_MONOLITHIC_INSTALL 1)

# This must be last
include(CPack)
