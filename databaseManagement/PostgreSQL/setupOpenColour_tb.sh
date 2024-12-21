#!/bin/bash

sudo -u postgres psql -d "colours_db"<<EOF
CREATE TABLE IF NOT EXISTS open_colour (
    id SERIAL PRIMARY KEY,
    colour_name VARCHAR(50) NOT NULL,
    hex_value CHAR(7) NOT NULL
);

INSERT INTO open_colour (colour_name, hex_value, rgb_value) VALUES
('White', '#ffffff', '255,255,255'),
('Black', '#000000', '0,0,0'),
('Gray 0', '#f8f9fa', '248,249,250'),
('Gray 1', '#f1f3f5', '241,243,245'),
('Gray 2', '#e9ecef', '233,236,239'),
('Gray 3', '#dee2e6', '222,226,230'),
('Gray 4', '#ced4da', '206,212,218'),
('Gray 5', '#adb5bd', '173,181,189'),
('Gray 6', '#868e96', '134,142,150'),
('Gray 7', '#495057', '73,80,87'),
('Gray 8', '#343a40', '52,58,64'),
('Gray 9', '#212529', '33,37,41'),
('Red 0', '#fff5f5', '255,245,245'),
('Red 1', '#ffe3e3', '255,227,227'),
('Red 2', '#ffc9c9', '255,201,201'),
('Red 3', '#ffa8a8', '255,168,168'),
('Red 4', '#ff8787', '255,135,135'),
('Red 5', '#ff6b6b', '255,107,107'),
('Red 6', '#fa5252', '250,82,82'),
('Red 7', '#f03e3e', '240,62,62'),
('Red 8', '#e03131', '224,49,49'),
('Red 9', '#c92a2a', '201,42,42'),
('Pink 0', '#fff0f6', '255,240,246'),
('Pink 1', '#ffdeeb', '255,222,235'),
('Pink 2', '#fcc2d7', '252,194,215'),
('Pink 3', '#faa2c1', '250,162,193'),
('Pink 4', '#f783ac', '247,131,172'),
('Pink 5', '#f06595', '240,101,149'),
('Pink 6', '#e64980', '230,73,128'),
('Pink 7', '#d6336c', '214,51,108'),
('Pink 8', '#c2255c', '194,37,92'),
('Pink 9', '#a61e4d', '166,30,77'),
('Grape 0', '#f8f0fc', '248,240,252'),
('Grape 1', '#f3d9fa', '243,217,250'),
('Grape 2', '#eebefa', '238,190,250'),
('Grape 3', '#e599f7', '229,153,247'),
('Grape 4', '#da77f2', '218,119,242'),
('Grape 5', '#cc5de8', '204,93,232'),
('Grape 6', '#be4bdb', '190,75,219'),
('Grape 7', '#ae3ec9', '174,62,201'),
('Grape 8', '#9c36b5', '156,54,181'),
('Grape 9', '#862e9c', '134,46,156'),
('Violet 0', '#f3f0ff', '243,240,255'),
('Violet 1', '#e5dbff', '229,219,255'),
('Violet 2', '#d0bfff', '208,191,255'),
('Violet 3', '#b197fc', '177,151,252'),
('Violet 4', '#9775fa', '151,117,250'),
('Violet 5', '#845ef7', '132,94,247'),
('Violet 6', '#7950f2', '121,80,242'),
('Violet 7', '#7048e8', '112,72,232'),
('Violet 8', '#6741d9', '103,65,217'),
('Violet 9', '#5f3dc4', '95,61,196'),
('Indigo 0', '#edf2ff', '237,242,255'),
('Indigo 1', '#dbe4ff', '219,228,255'),
('Indigo 2', '#bac8ff', '186,200,255'),
('Indigo 3', '#91a7ff', '145,167,255'),
('Indigo 4', '#748ffc', '116,143,252'),
('Indigo 5', '#5c7cfa', '92,124,250'),
('Indigo 6', '#4c6ef5', '76,110,245'),
('Indigo 7', '#4263eb', '66,99,235'),
('Indigo 8', '#3b5bdb', '59,91,219'),
('Indigo 9', '#364fc7', '54,79,199'),
('Blue 0', '#e7f5ff', '231,245,255'),
('Blue 1', '#d0ebff', '208,235,255'),
('Blue 2', '#a5d8ff', '165,216,255'),
('Blue 3', '#74c0fc', '116,192,252'),
('Blue 4', '#4dabf7', '77,171,247'),
('Blue 5', '#339af0', '51,154,240'),
('Blue 6', '#228be6', '34,139,230'),
('Blue 7', '#1c7ed6', '28,126,214'),
('Blue 8', '#1971c2', '25,113,194'),
('Blue 9', '#1864ab', '24,100,171'),
('Cyan 0', '#e3fafc', '227,250,252'),
('Cyan 1', '#c5f6fa', '197,246,250'),
('Cyan 2', '#99e9f2', '153,233,242'),
('Cyan 3', '#66d9e8', '102,217,232'),
('Cyan 4', '#3bc9db', '59,201,219'),
('Cyan 5', '#22b8cf', '34,184,207'),
('Cyan 6', '#15aabf', '21,170,191'),
('Cyan 7', '#1098ad', '16,152,173'),
('Cyan 8', '#0c8599', '12,133,153'),
('Cyan 9', '#0b7285', '11,114,133'),
('Teal 0', '#e6fcf5', '230,252,245'),
('Teal 1', '#c3fae8', '195,250,232'),
('Teal 2', '#96f2d7', '150,242,215'),
('Teal 3', '#63e6be', '99,230,190'),
('Teal 4', '#38d9a9', '56,217,169'),
('Teal 5', '#20c997', '32,201,151'),
('Teal 6', '#12b886', '18,184,134'),
('Teal 7', '#0ca678', '12,166,120'),
('Teal 8', '#099268', '9,146,104'),
('Teal 9', '#087f5b', '8,127,91'),
('Green 0', '#ebfbee', '235,251,238'),
('Green 1', '#d3f9d8', '211,249,216'),
('Green 2', '#b2f2bb', '178,242,187'),
('Green 3', '#8ce99a', '140,233,154'),
('Green 4', '#69db7c', '105,219,124'),
('Green 5', '#51cf66', '81,207,102'),
('Green 6', '#40c057', '64,192,87'),
('Green 7', '#37b24d', '55,178,77'),
('Green 8', '#2f9e44', '47,158,68'),
('Green 9', '#2b8a3e', '43,138,62');
ON CONFLICT (colour_name) DO NOTHING;
EOF