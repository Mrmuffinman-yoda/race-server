INSERT INTO tires (id,is_wet,max_pressure,min_pressure)
VALUES
('C1',False, 23.0 , 21.0), -- Hardest tyre --
('C2',False, 22.5 , 20.5),
('C3',False, 22.0 , 20.0),
('C4',False, 21.5 , 19.5),
('C5',False, 21.0 , 19.0), -- Softest tyre --
('W', True, 20.0 , 18.0), -- Wet tyre --
('I', True, 20.0 , 18.0); -- Intermediate tyre --

-- For any race weekend, only 3 of the 5 tyre types will be available for use --
-- Measured in PSI --