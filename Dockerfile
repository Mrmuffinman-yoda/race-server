# Use an official lightweight Linux distribution with C++ support
FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache g++ cmake make boost-dev asio-dev git

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Check if Crow is present, if not, clone it
RUN if [ ! -d "crow" ]; then \
    echo "Crow doesn't exist, cloning repository..."; \
    git clone https://github.com/CrowCpp/Crow.git crow; \
    fi

# Build the application
RUN rm -rf build && mkdir build
WORKDIR /app/build
RUN cmake -G "Unix Makefiles" -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ .. && make

# List the contents of the build directory for verification
RUN ls -la /app/build

# Expose the port the app runs on
EXPOSE 18080

# Run the application
CMD ["./RaceServer"]