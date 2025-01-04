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