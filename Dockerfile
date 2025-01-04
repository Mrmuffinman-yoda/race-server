FROM alpine:latest

# Install dependencies
RUN apk add --no-cache g++ cmake make boost-dev asio-dev git postgresql-dev

# Set working directory
WORKDIR /app

# Install libpqxx from source
RUN git clone https://github.com/jtv/libpqxx.git && \
    cd libpqxx && \
    cmake -S . -B build && \
    cmake --build build && \
    cmake --install build && \
    cd .. && \
    rm -rf libpqxx

# Clone Crow repository
RUN git clone https://github.com/CrowCpp/Crow.git crow

# Copy project files
COPY . /app

# Create build directory
RUN rm -rf build && mkdir build

# Set working directory to build
WORKDIR /app/build

# Build the project
RUN cmake -G "Unix Makefiles" -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ .. && make

# List build directory contents
RUN ls -la /app/build

# Expose the application port
EXPOSE 18080

# Run the application
CMD ["./RaceServer"]