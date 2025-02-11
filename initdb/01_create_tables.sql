-- New table for login information
CREATE TABLE
    IF NOT EXISTS teams (id SERIAL PRIMARY KEY, name VARCHAR(100) NOT NULL);

CREATE TABLE
    IF NOT EXISTS drivers (
        id INT PRIMARY KEY, -- Manually specify the primary key
        name VARCHAR(100) NOT NULL,
        team_id INT NOT NULL,
        points INT NOT NULL,
        FOREIGN KEY (team_id) REFERENCES teams (id)
    );

CREATE TABLE
    IF NOT EXISTS users (
        id SERIAL PRIMARY KEY,
        username VARCHAR(100) NOT NULL,
        -- lets use SHA-256 encryption for the password
        password VARCHAR(256) NOT NULL,
        -- lets include team id and driver id which will be used to track the user's team and driver
        team_id INT NOT NULL,
        driver_id INT NOT NULL,
        FOREIGN KEY (team_id) REFERENCES teams (id),
        FOREIGN KEY (driver_id) REFERENCES drivers (id)
    );

CREATE TABLE
    IF NOT EXISTS sessions (
        token VARCHAR(256) PRIMARY KEY,
        user_id INT REFERENCES users (id),
        expires_at TIMESTAMP NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users (id)
    );

-------------------------------------------------------------
-------------------------- MODELS ---------------------------
-------------------------------------------------------------
CREATE TABLE
    IF NOT EXISTS cars (
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
        FOREIGN KEY (team_id) REFERENCES teams (id),
        FOREIGN KEY (driver_id) REFERENCES drivers (id)
    );

-- b for base values --
CREATE TABLE
    IF NOT EXISTS tracks (
        id SERIAL PRIMARY KEY,
        track_name VARCHAR(50) NOT NULL,
        length FLOAT NOT NULL, -- KM
        laps INT NOT NULL,
        altitude FLOAT NOT NULL,
        x_cord FLOAT NOT NULL,
        y_cord FLOAT NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS tires (
        id VARCHAR(2) PRIMARY KEY,
        is_wet BOOLEAN NOT NULL,
        max_pressure FLOAT NOT NULL,
        min_pressure FLOAT NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS c_tire (
        id SERIAL PRIMARY KEY,
        tire VARCHAR(2) NOT NULL,
        age INT NOT NULL,
        -- Tire temperatures --
        fl_tire_tmp FLOAT NOT NULL,
        fr_tire_tmp FLOAT NOT NULL,
        rl_tire_tmp FLOAT NOT NULL,
        rr_tire_tmp FLOAT NOT NULL,
        -- Tire pressures --
        fl_tire_pressure FLOAT NOT NULL,
        fr_tire_pressure FLOAT NOT NULL,
        rl_tire_pressure FLOAT NOT NULL,
        rr_tire_pressure FLOAT NOT NULL,
        FOREIGN KEY (tire) REFERENCES tires (id)
    );

-- C tables are for current/live values --
CREATE TABLE
    IF NOT EXISTS c_car (
        id SERIAL PRIMARY KEY,
        car_id INT NOT NULL,
        c_tires INT NOT NULL,
        engine_breaking FLOAT NOT NULL,
        front_toe FLOAT NOT NULL,
        rear_toe FLOAT NOT NULL,
        front_camber FLOAT NOT NULL,
        rear_camber FLOAT NOT NULL,
        -- The rake angle would be the difference between the front and rear suspension height -- 
        front_suspension_height FLOAT NOT NULL,
        rear_suspension_height FLOAT NOT NULL,
        front_antiroll_bar FLOAT NOT NULL,
        rear_antiroll_bar FLOAT NOT NULL,
        off_throttle_diff FLOAT NOT NULL,
        fuel_level FLOAT NOT NULL,
        FOREIGN KEY (car_id) REFERENCES cars (id),
        FOREIGN KEY (c_tires) REFERENCES c_tire (id)
    );

CREATE TABLE
    IF NOT EXISTS c_weather (
        id SERIAL PRIMARY KEY,
        condition VARCHAR(50) NOT NULL,
        temperature FLOAT NOT NULL,
        humidity FLOAT NOT NULL,
        wind_speed FLOAT NOT NULL,
        wind_direction FLOAT NOT NULL,
        precipitation INT NOT NULL,
        air_pressure FLOAT NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS race_sessions (
        id SERIAL PRIMARY KEY,
        session_name VARCHAR(50) NOT NULL,
        track_id INT NOT NULL,
        weather_id INT NOT NULL,
        start_time TIMESTAMP NOT NULL,
        end_time TIMESTAMP NOT NULL,
        FOREIGN KEY (track_id) REFERENCES tracks (id),
        FOREIGN KEY (weather_id) REFERENCES c_weather (id)
    );

CREATE TABLE
    IF NOT EXISTS user_sessions (
        id SERIAL PRIMARY KEY,
        user_id INT NOT NULL,
        race_session_id INT NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users (id),
        FOREIGN KEY (race_session_id) REFERENCES race_sessions (id)
    );