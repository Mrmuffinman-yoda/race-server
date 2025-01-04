\c raceserver

-- Insert teams
INSERT INTO teams (name) VALUES ('Mercedes F1 AMG Petronas'), ('Red Bull Racing');

-- Insert drivers
INSERT INTO drivers (id, name, team_id, points) VALUES
(44,'Lewis Hamilton', 1, 60),
(1,'Max Verstappen', 2, 120);