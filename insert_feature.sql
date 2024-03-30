/* Insert Feature */ 

-- Aston Martin 
INSERT INTO feature (description) VALUES ("Technology Pack, Hood Primary Colour, Wind Deflector,
Bonnet Vents in Carbon Fibre, Mirror Caps in Carbon Fibre, Side Gills in Louvered Carbon,
,21 inch Alloy Wheels in Satin Black with Diamond Turned Finish"); -- Vantage V8 Roadster 2021 Vantage F1 Edition Roadster id feature -- 15
INSERT INTO feature (description) VALUES ('Sports Plus Pack, Technology Pack, Quad Stainless Steel Exhaust in Matt Black
Primary Paint Colour, Bonnet Vents in Carbon Fibre, Exterior Bodypack in Gloss Carbon Fibre Twill Design
Exterior Door Handles in Body Colour, Front Grille Mesh in Matte Black, Side Gills in Louvered Carbon
Under Bonnet Cross Brace in Silver, Window Surround Finishers in Black, Wings Badges in Bright Chrome and Green
Halo Graphic Pack, Brake Discs in Carbon Ceramic, Tail Lights in Smoked Finish, AMR Split Trim, Contemporary Leather Colour
Interior Pack in Dark Chrome and Satin Carbon, Boot Carpet Colour Matched to Interior Carpet, Floormats, Headlining Matched to Seat Inner
Seatbelts in Warm Charcoal, 360 Camera System, Aston Martin Tracking Unit, Steering Wheel in Dark Knight Leather
Headlining in Dark Knight Alcantara'); -- vantage coupe Vantage AMR Coupe -- 16

-- Lamborghini 
INSERT INTO feature (description) VALUES ('3D Navigation'); -- id feature -- 14
select * from feature; 

/* Delete information in table feature
DELETE FROM feature WHERE description = '3D Navigation'; -- 
*/

-- ALTER TABLE feature MODIFY COLUMN description VARCHAR(1000) NOT NULL;