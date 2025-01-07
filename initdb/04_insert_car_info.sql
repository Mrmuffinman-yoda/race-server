-- Insert Cars (with performance disparity)
INSERT INTO cars (car_name, team_id, driver_id, b_downforce, b_drag_coefficient, b_balance_den, b_balance_num, b_sus_stiff, b_engine_HP, b_fuel_load, estimated_fuel_consumption)
VALUES
-- Ferrari SF-23 - Carlos Sainz
('Ferrari SF-23', 3, 55, 3000.0, 0.85, 53, 47, 750.0, 1030.0, 112.0, 2.05),
-- Ferrari SF-23 - Charles Leclerc
('Ferrari SF-23', 3, 16, 3050.0, 0.84, 52, 48, 755.0, 1040.0, 113.0, 2.1),
-- Red Bull RB20 - Max Verstappen
('Red Bull RB20', 1, 44, 3200.0, 0.80, 54, 46, 770.0, 1070.0, 115.0, 1.9),
-- Red Bull RB20 - Sergio Perez
('Red Bull RB20', 1, 11, 3150.0, 0.81, 53, 47, 765.0, 1060.0, 114.0, 2.0),
-- Mercedes W15 - Lewis Hamilton
('Mercedes W15', 2, 44, 2900.0, 0.87, 51, 49, 740.0, 1000.0, 110.0, 2.2),
-- Mercedes W15 - George Russell
('Mercedes W15', 2, 63, 2950.0, 0.86, 52, 48, 745.0, 1020.0, 111.0, 2.15);