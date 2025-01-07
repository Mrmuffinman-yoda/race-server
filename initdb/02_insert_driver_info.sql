\c raceserver

-- Insert teams
INSERT INTO teams (id,name) VALUES 
(1, 'Mercedes F1 AMG Petronas'),
(2, 'Red Bull Racing'),
(3,'Scuderia Ferrari HP');

-- Insert drivers
INSERT INTO drivers (id, name, team_id, points) VALUES
(44,'Lewis Hamilton', 1, 61),
(63, 'George Russel', 1, 75),
(11, 'Sergio Pérez', 2 , 48),
(16, 'Charles Leclerc', 3, 82),
(55, 'Carlos Sainz Jr', 3 ,59),
(1,'Max Verstappen', 2, 129);