\c raceserver

CREATE TABLE IF NOT EXISTS teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS drivers (
    id INT PRIMARY KEY,  -- Manually specify the primary key
    name VARCHAR(100) NOT NULL,
    team_id INT NOT NULL,
    points INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- New table for login information

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    -- lets use AES-256 encryption for the password
    password VARCHAR(256) NOT NULL,
    -- lets include team id and driver id which will be used to track the user's team and driver
    team_id INT NOT NULL,
    driver_id INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES teams(id),
    FOREIGN KEY (driver_id) REFERENCES drivers(id)
);

CREATE TABLE IF NOT EXISTS sessions (
    token VARCHAR(256) PRIMARY KEY,
    user_id INT REFERENCES users(id),
    expires_at TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS cars(
    id SERIAL PRIMARY KEY,
    car_name VARCHAR(50) NOT NULL,
    team_id INT NOT NULL,
    driver_id INT NOT NULL,
    b_downforce FLOAT NOT NULL,
    b_drag_coefficient FLOAT NOT NULL,
    b_balance_den INT NOT NULL,
    b_balance_num INT NOT NULL,
    b_sus_stiff FLOAT NOT NULL,
    b_engine_HP FLOAT NOT NULL,
    b_fuel_load FLOAT NOT NULL,
    estimated_fuel_consumption FLOAT,
    FOREIGN KEY (team_id) REFERENCES teams(id),
    FOREIGN KEY (driver_id) REFERENCES drivers(id)
);

CREATE TABLE IF NOT EXISTS tracks(
    id SERIAL PRIMARY KEY,
    track_name VARCHAR(50) NOT NULL,
    length FLOAT NOT NULL, -- KM
    laps INT NOT NULL, 
    altitude FLOAT NOT NULL,
    x_cord FLOAT NOT NULL,
    y_cord FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS tires(
    id VARCHAR(2) PRIMARY KEY,
    is_wet BOOLEAN NOT NULL,
    max_pressure FLOAT NOT NULL,
    min_pressure FLOAT NOT NULL
);