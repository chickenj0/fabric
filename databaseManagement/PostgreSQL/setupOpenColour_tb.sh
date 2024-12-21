#!/bin/bash

sudo -u postgres psql -d "colours_db"<<EOF
CREATE TABLE IF NOT EXISTS open_colour (
    id SERIAL PRIMARY KEY,
    colour_name VARCHAR(50) NOT NULL,
    hex_value CHAR(7) NOT NULL
);

INSERT INTO open_colour (colour_name, hex_value) VALUES
('White', '#ffffff'),
('Black', '#000000'),
('Gray 0', '#f8f9fa'),
('Gray 1', '#f1f3f5'),
('Gray 2', '#e9ecef'),
('Gray 3', '#dee2e6'),
('Gray 4', '#ced4da'),
('Gray 5', '#adb5bd'),
('Gray 6', '#868e96'),
('Gray 7', '#495057'),
('Gray 8', '#343a40'),
('Gray 9', '#212529'),
('Red 0', '#fff5f5'),
('Red 1', '#ffe3e3'),
('Red 2', '#ffc9c9'),
('Red 3', '#ffa8a8'),
('Red 4', '#ff8787'),
('Red 5', '#ff6b6b'),
('Red 6', '#fa5252'),
('Red 7', '#f03e3e'),
('Red 8', '#e03131'),
('Red 9', '#c92a2a'),
('Pink 0', '#fff0f6'),
('Pink 1', '#ffdeeb'),
('Pink 2', '#fcc2d7'),
('Pink 3', '#faa2c1'),
('Pink 4', '#f783ac'),
('Pink 5', '#f06595'),
('Pink 6', '#e64980'),
('Pink 7', '#d6336c'),
('Pink 8', '#c2255c'),
('Pink 9', '#a61e4d'),
('Grape 0', '#f8f0fc'),
('Grape 1', '#f3d9fa'),
('Grape 2', '#eebefa'),
('Grape 3', '#e599f7'),
('Grape 4', '#da77f2'),
('Grape 5', '#cc5de8'),
('Grape 6', '#be4bdb'),
('Grape 7', '#ae3ec9'),
('Grape 8', '#9c36b5'),
('Grape 9', '#862e9c'),
('Violet 0', '#f3f0ff'),
('Violet 1', '#e5dbff'),
('Violet 2', '#d0bfff'),
('Violet 3', '#b197fc'),
('Violet 4', '#9775fa'),
('Violet 5', '#845ef7'),
('Violet 6', '#7950f2'),
('Violet 7', '#7048e8'),
('Violet 8', '#6741d9'),
('Violet 9', '#5f3dc4'),
('Indigo 0', '#edf2ff'),
('Indigo 1', '#dbe4ff'),
('Indigo 2', '#bac8ff'),
('Indigo 3', '#91a7ff'),
('Indigo 4', '#748ffc'),
('Indigo 5', '#5c7cfa'),
('Indigo 6', '#4c6ef5'),
('Indigo 7', '#4263eb'),
('Indigo 8', '#3b5bdb'),
('Indigo 9', '#364fc7'),
('Blue 0', '#e7f5ff'),
('Blue 1', '#d0ebff'),
('Blue 2', '#a5d8ff'),
('Blue 3', '#74c0fc'),
('Blue 4', '#4dabf7'),
('Blue 5', '#339af0'),
('Blue 6', '#228be6'),
('Blue 7', '#1c7ed6'),
('Blue 8', '#1971c2'),
('Blue 9', '#1864ab'),
('Cyan 0', '#e3fafc'),
('Cyan 1', '#c5f6fa'),
('Cyan 2', '#99e9f2'),
('Cyan 3', '#66d9e8'),
('Cyan 4', '#3bc9db'),
('Cyan 5', '#22b8cf'),
('Cyan 6', '#15aabf'),
('Cyan 7', '#1098ad'),
('Cyan 8', '#0c8599'),
('Cyan 9', '#0b7285'),
('Teal 0', '#e6fcf5'),
('Teal 1', '#c3fae8'),
('Teal 2', '#96f2d7'),
('Teal 3', '#63e6be'),
('Teal 4', '#38d9a9'),
('Teal 5', '#20c997'),
('Teal 6', '#12b886'),
('Teal 7', '#0ca678'),
('Teal 8', '#099268'),
('Teal 9', '#087f5b'),
('Green 0', '#ebfbee'),
('Green 1', '#d3f9d8'),
('Green 2', '#b2f2bb'),
('Green 3', '#8ce99a'),
('Green 4', '#69db7c'),
('Green 5', '#51cf66'),
('Green 6', '#40c057'),
('Green 7', '#37b24d'),
('Green 8', '#2f9e44'),
('Green 9', '#2b8a3e'),
('Lime 0', '#f4fce3'),
('Lime 1', '#e9fac8'),
('Lime 2', '#d8f5a2'),
('Lime 3', '#c0eb75'),
('Lime 4', '#a9e34b'),
('Lime 5', '#94d82d'),
('Lime 6', '#82c91e'),
('Lime 7', '#74b816'),
('Lime 8', '#66a80f'),
('Lime 9', '#5c940d'),
('Yellow 0', '#fff9db'),
('Yellow 1', '#fff3bf'),
('Yellow 2', '#ffec99'),
('Yellow 3', '#ffe066'),
('Yellow 4', '#ffd43b'),
('Yellow 5', '#fcc419'),
('Yellow 6', '#fab005'),
('Yellow 7', '#f59f00'),
('Yellow 8', '#f08c00'),
('Yellow 9', '#e67700'),
('Orange 0', '#fff4e6'),
('Orange 1', '#ffe8cc'),
('Orange 2', '#ffd8a8'),
('Orange 3', '#ffc078'),
('Orange 4', '#ffa94d'),
('Orange 5', '#ff922b'),
('Orange 6', '#fd7e14'),
('Orange 7', '#f76707'),
('Orange 8', '#e8590c'),
('Orange 9', '#d9480f');
ON CONFLICT (colour_name) DO NOTHING;
EOF