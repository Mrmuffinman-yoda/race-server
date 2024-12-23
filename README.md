# Crow F1 API Server

This project is a REST API server built using the Crow framework, designed to serve Formula 1 data to various user interfaces.

## Project Structure

```
race-server
├── src
│   ├── main.cpp                # Entry point of the application
│   ├── controllers
│   │   └── f1_controller.cpp   # Handles requests related to F1 data
│   ├── routes
│   │   └── f1_routes.cpp       # Defines API endpoints
│   └── models
│       └── f1_model.cpp        # Data structures and models for F1 data
├── CMakeLists.txt              # CMake configuration file
├── README.md                   # Project documentation
└── .gitignore                  # Git ignore file
```

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone https://github.com/yourusername/crow-f1-api-server.git
   cd crow-f1-api-server
   ```

2. **Install dependencies:**
   Ensure you have CMake and the Crow framework installed.

3. **Build the project:**
   ```
   mkdir build
   cd build
   cmake ..
   make
   ```

4. **Run the server:**
   ```
   ./crow-f1-api-server
   ```

## API Usage

- **GET /api/drivers**: Retrieve driver standings.
- **GET /api/team**: Retrieve driver standings.

## Contributing

Feel free to submit issues or pull requests for improvements or bug fixes.

## License

This project is licensed under the MIT License.