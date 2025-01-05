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

CREATE TABLE sessions (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    token VARCHAR(256) NOT NULL,
    expires_at TIMESTAMP NOT NULL
);