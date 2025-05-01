# Crow F1 API Server

This project is a REST API server built using the Crow framework, designed to serve Formula 1 data to various user interfaces.

## General Project Structure

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
   git clone https://github.com/Mrmuffinman-yoda/race-server.git
   cd race-server
   ```

2. **Install dependencies:**
   All included, only require docker

3. create .env file and include parameters
   ```
   POSTGRES_USER=postgres
   POSTGRES_PASSWORD=______
   POSTGRES_DB=______
   DATABASE_HOST=db
   DATABASE_PORT=5432
   DATABASE_NAME=raceserver
   DATABASE_USER=postgres
   DATABASE_PASSWORD=_______

   ```

3. **Build the project:**
   ```
   docker compose build
   ```

4. **Run the server:**
   ```
   docker compose up
   ```



