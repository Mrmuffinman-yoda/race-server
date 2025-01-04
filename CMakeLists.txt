cmake_minimum_required(VERSION 3.10)

project(RaceServer)
set(CMAKE_CXX_STANDARD 17)

# Add Crow
include_directories(${CMAKE_SOURCE_DIR}/crow/include)

# Add Boost (Crow dependency)
find_package(Boost REQUIRED)
if(Boost_FOUND)
    message(STATUS "Boost found: ${Boost_INCLUDE_DIRS}")
    include_directories(${Boost_INCLUDE_DIRS})
else()
    message(FATAL_ERROR "Boost not found. Please install Boost and try again.")
endif()

# Add source files
file(GLOB SOURCES "src/*.cpp" "src/controllers/*.cpp" "src/routes/*.cpp" "src/models/*.cpp")

# Add include directories
include_directories(${CMAKE_SOURCE_DIR}/src)
include_directories(${CMAKE_SOURCE_DIR}/src/controllers)
include_directories(${CMAKE_SOURCE_DIR}/src/routes)
include_directories(${CMAKE_SOURCE_DIR}/includes)

# Set build type to Debug for better logging
set(CMAKE_BUILD_TYPE Debug)

# Enable verbose makefile output
set(CMAKE_VERBOSE_MAKEFILE ON)

# Create the executable
add_executable(RaceServer ${SOURCES})

# Link Boost libraries
target_link_libraries(RaceServer PRIVATE ${Boost_LIBRARIES})

# Link pqxx and pq libraries
target_link_libraries(RaceServer PRIVATE pqxx pq)

# Link Winsock libraries on Windows
if(WIN32)
    target_link_libraries(RaceServer PRIVATE ws2_32 mswsock)
endif()