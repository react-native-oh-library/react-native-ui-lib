cmake_minimum_required(VERSION 3.13)
set(CMAKE_VERBOSE_MAKEFILE on)

set(rnoh_ui_lib_generated_dir "${RNOH_GENERATED_DIR}/_react_native_oh_tpl_react_native_ui_lib")
file(GLOB_RECURSE rnoh_ui_lib_generated_SRC "${rnoh_ui_lib_generated_dir}/**/*.cpp")
file(GLOB rnoh_ui_lib_SRC CONFIGURE_DEPENDS *.cpp)
add_library(rnoh_ui_lib SHARED ${rnoh_ui_lib_SRC} ${rnoh_ui_lib_generated_SRC})
target_include_directories(rnoh_ui_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR} ${rnoh_ui_lib_generated_dir})
target_link_libraries(rnoh_ui_lib PUBLIC rnoh)