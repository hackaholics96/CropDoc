-- db/seed/seed.sql
INSERT INTO crops (name, typical_soil)
VALUES ('paddy', 'clay'), ('maize', 'loam'), ('groundnut', 'sandy')
ON CONFLICT DO NOTHING;

INSERT INTO fertilizer_lookup (crop_name, soil_type, recommendation, note)
VALUES
('paddy', 'clay', 'Use NPK 12:32:16 @ 50 kg/acre; top up urea at tillering', 'Adjust by soil test'),
('maize', 'loam', 'Apply NPK 10:26:26 @ 60 kg/acre', 'Split into 2 applications')
ON CONFLICT DO NOTHING;
