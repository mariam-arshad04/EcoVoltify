-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2025 at 07:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecovoltify2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_description`) VALUES
(1, 'Daikin', 'Air conditioning and HVAC systems'),
(2, 'Sunpower Corporation', 'High-efficiency solar panels'),
(3, 'REC', 'Reliable solar energy solutions'),
(4, 'Tesla', 'Electric cars and solar energy products'),
(5, 'Enphase', 'Solar microinverters and energy systems'),
(6, 'Belling UK', 'Cooking appliances (ovens, stoves)'),
(7, 'Liebherr', 'Premium refrigerators and freezers'),
(8, 'Smeg', 'Stylish Italian kitchen appliances'),
(9, 'Bosch', 'German home appliances and tools'),
(10, 'LG', 'Electronics and home appliances'),
(11, 'Samsung', 'Global electronics and appliances leader'),
(12, 'Miele', 'High-end German appliances'),
(13, 'HotPoint', 'Affordable home appliances'),
(14, 'Elica', 'Kitchen hoods and ventilation systems'),
(15, 'GE Appliances', 'American home appliance brand'),
(16, 'Firefly Electric and Lighting Corporation', 'Lighting and electrical products (Philippines)'),
(17, 'Philips', 'Lighting, health tech, and electronics'),
(18, 'Ring Electrical', 'Smart home and lighting systems'),
(19, 'Sylvania', 'Lighting solutions and LED products');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'power-and-energy', 'Products related to energy solutions and power sources'),
(2, 'home-appliances', 'Appliances and electronics for home use'),
(3, 'modern-lighting', 'Stylish and efficient modern lighting solutions');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `form_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`form_id`, `username`, `useremail`, `message`) VALUES
(1, 'mariam', 'mariamarshad137@gmail.com', 'i would love to collaborate');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `donation_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `datetime`, `address`, `postal_code`, `city`, `total`, `status`) VALUES
('fw9gpcy8', 1, '2025-05-11 22:26:05', 'A-483, sector 11-B, North Karachi', '75850', 'Karachi', '3345', 'processing'),
('h6w68xei', 1, '2025-05-11 22:33:05', 'A-483, sector 11-B, North Karachi', '75850', 'Karachi', '318.83', 'processing'),
('jlzj7gep', 1, '2025-05-11 22:23:57', 'A-483, sector 11-B, North Karachi', '75850', 'Karachi', '115', 'processing');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `prd_image` varchar(255) NOT NULL,
  `carbon_footprint` varchar(255) NOT NULL,
  `energy_efficiency` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `warranty` varchar(255) NOT NULL,
  `wattage` varchar(255) NOT NULL,
  `voltage` varchar(255) NOT NULL,
  `price2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_description`, `brand_id`, `category_id`, `price`, `prd_image`, `carbon_footprint`, `energy_efficiency`, `quantity`, `warranty`, `wattage`, `voltage`, `price2`) VALUES
(1, 'daikin altherma 3 monobloc', 'An air-to-water low-temperature monobloc heat pump that meets the needs of your newly built home', 1, 1, '$10673.88', 'images/power-and-energy/daikin_heat_pump.png', '75% reduction in environmental impact, R-32 (3.8 kg charge; 2.57 tCO₂eq)', 'A+++ (35°C), A++ (55°C)', 10, 'Upto 5 years', '12,500 W (heating output), 3,420 W (electrical input)', '230V', 10673),
(2, 'IQ Battery 5P', 'An all-in-one, AC-coupled storage system, the IQ Battery 5P is the most powerful Enphase battery yet. ', 5, 1, '$3,145.00', 'images/power-and-energy/IQ_Battery_5P_Hero_2x.png', 'reduced carbon footprint by integrating advanced lithium-ion technology', '90%', 5, '15 years up to 6,000 cycles.', '3.84 kW', '78.6V', 3145),
(3, 'REC Alpha Pure-R Series – High-Efficiency Solar Panels', 'The REC Alpha Pure-R is a premium lead free solar panel series designed for high performance and combines advanced heterojunction cell (HJT) technology with a gapless half-cut cell layout.', 3, 1, '$3,145.00', 'images/power-and-energy/REC_Alpha_REC420AA_Pure-R-420Wp.png', 'Certified low carbon footprint by CERTISOLIS, with values below 550 kg CO₂-eq per kWp', 'Up to 22.3%', 5, '20 years – covers panel defects', '430 W', 'Voc of 59.7 V and a Vmp of 50.5 V', 3145),
(4, 'Sunpower maxeon 6 AC - full black solar panel', 'Experience the ultimate in solar power with the SunPower Maxeon 6 AC Full Black panel. Built to maximise energy output in high temperatures and low light.', 2, 1, '$558.00 to $670.00 per panel', 'images/power-and-energy/SunPower-Maxeon-6-AC-425w-1.png', 'Certified low carbon footprint by CERTISOLIS, with values below 550 kg CO₂-eq per kWp', 'Up to 22.8%', 6, '40 years', '425 W', 'Voc of 48.2 V and a Vmp of 40.3 V', 558),
(5, 'Tesla Powerwall 3', 'Powerwall 3 is a fully integrated solar and battery system, designed to meet the needs of your home. Powerwall 3 can supply more power with a single unit and is designed for easy expansion to meet your present or future needs.', 4, 1, '$13,000.00', 'images/power-and-energy/Tesla-Powerwall-3.png', 'The Powerwall 3 helps reduce carbon emissions by using eco-friendly LFP batteries and promoting solar energy storage.', 'round-trip efficiency of 89%', 5, '10 years', '11.5 kW AC', '230 VAC (Single-phase)', 13000),
(6, 'Philips Essential LED Bulb 10W - Pack of 6', 'Philips LED lights will enhance every room\'s brightness while having non-visible flickering.', 17, 3, '$42.38', 'images/modern-lightings/Philips-LED-Bulbs -10W.png', '~2.83 kg CO₂/year', '90% energy saving, A++ energy rating, long lifespan', 10, '1 year', '10 W', '230V', 42.38),
(7, 'Philips LED Flicker-Free Ultra Definition Light Bulb', 'Warm light, high color rendering index (CRI 95), EyeComfort technology', 17, 3, '$5.00 per bulb', 'images/modern-lightings/Philips-LED-Flicker-Free-Ultra-Definition-Light-Bulb.png', '~2.1 kg CO₂/year (based on 3 hours/day usage)', 'ENERGY STAR certified', 5, 'Up to 15,000 hours lifespan', '8.5 W', '120V', 5),
(8, 'Ring A19 Smart LED Bulb', 'Energy-efficient smart LED bulb that shines up to 800 lumens of white light.', 18, 3, '$14.99', 'images/power-and-energy/REC_Alpha_REC420AA_Pure-R-420Wp.png', ' ~2.3 kg CO₂/year (based on 3 hours/day usage)', 'ENERGY STAR certified', 7, '1-year limited warranty', '9W', '120V', 14.99),
(9, 'SYLVANIA LED A19 Light Bulb,', 'Brighten your house with 800 lumens of light. Ideal for use in ceiling lights or floor lamps, the SYLVANIA LED bulbs illuminate the home and provides quality, long-lasting lighting.', 19, 3, '$11.19 for Pack of 4', 'images/modern-lightings/Sylvania-LED-A19-Bulb_optimized.png', '~2.1 kg CO₂/year (based on 3 hours/day usage)', 'ENERGY STAR certified', 7, '3-year limited warranty', '8.5 W', '120 V', 11.19),
(10, 'Firefly LED A Series Display Panel', 'The Firefly LED A Series is a premier indoor LED display panel designed for high-resolution applications.', 16, 3, '$790.00 per panel', 'images/modern-lightings/Firefly-LED-A-Series-Display-Panel.png	', 'Lowered due to enhanced heat dissipation', 'Optimized for efficiency with Flip Chip technology', 5, '2 years', '22–27W and max 81W', '110V–240V', 790),
(11, 'Firefly LED M Series Display Panel', 'Advanced energy-saving technology for indoor/outdoor use.', 16, 3, '$1,100 (indoor) to $1,590 (outdoor) per panel', 'images/modern-lightings/Firefly-LED-M-Series-Display-Panel.png', 'Significantly reduced due to Common Cathode Technology', 'Up to 75% less energy usage than traditional LED panels', 5, '2 years', ' 60–70W and max 150–170W', '110V–240V', 1100),
(12, 'Firefly LED O Series Outdoor Panel', 'Thin, lightweight, and energy-efficient for outdoor displays.', 16, 3, '$5,400 per panel', 'images/modern-lightings/Firefly-LED-M-Series-Display-Panel.png', 'Nichia diodes and design features contribute to reduced environmental impact', 'Nichia LED diodes and smart module technology enhances energy efficiency', 4, '2 years', 'Not Specified', '110V–240V', 5400),
(13, 'Smeg FAB10 - Fridge', 'The iconic Smeg FAB10 combines style with high-performance technology. With beautiful bold finishes and soft round curves reminiscent of 1950\'s retro design.', 8, 2, '$1,141.41', 'images/home-Comfort/smeg_fridge-removebg-preview.png', '25.84 kg per year', '71% Energy Efficient', 3, '2 years', '50 W', '220–240 V', 1141.41),
(14, 'Cookcentre 90E', '90cm electric range cooker with 5 zone ceramic hotplate, Maxi-Clock, market leading tall oven and easy clean enamel.', 6, 2, '$1,141.41', 'images/home-Comfort/Belling_BEL_RCA_COOKCENTRE_90E-removebg-preview.png', '0.29 kg per year', '100% Energy Efficient', 2, '1 to 3 years', '1.58 kWh/year', '240V', 1141.11),
(15, 'Liebherr - T 1504 Table Top Refrigerator', 'Freestanding table-top refrigerator designed for small kitchens, apartments, or as a secondary cooling unit.', 7, 2, '$318.83', 'images/home-Comfort/liebherr_fridge-removebg-preview.png', '32.76 kg per year', '29% Energy Efficient', 3, '1 to 2 years', '176 W', '	220-240 V', 318.83),
(16, 'Bosch KGE49AWCAG Fridge-Freezer', 'The Bosch KGE49AWCAG is a freestanding, 60/40 split fridge-freezer from Bosch’s Series 6 lineup, designed to offer energy-efficient cooling with advanced food preservation features.', 9, 2, '$930.00', 'images/home-Comfort/Bosch-KGE49AWCAG-Fridge-Freezer.png', '~53.77 kg CO₂/year', 'A++ energy rating', 2, '2 years', '90 W', '220–240 V', 930),
(17, 'Samsung Bespoke AI Slide-In Induction Range', 'Induction technology for efficient cooking, SmartThings Energy integration for monitoring energy usage.', 11, 2, '$2,299.00', 'images/home-Comfort/samsung-induction-oven.png', 'Induction cooking and smart energy monitoring contributes to reduced energy carbon footprint.', 'ENERGY STAR® certified', 3, '1 year', '4.3 kW', '220–240 V', 2299),
(18, 'Miele G7310 SC Dishwasher', 'Freestanding dishwashers with automatic dispensing thanks to AutoDos with integrated PowerDisk.', 12, 2, '$2,831.47', 'images/home-Comfort/Miele-G7310-SC-Dishwasher.png', '~59.75 kg CO₂/year', 'A+++ energy rating', 5, '2 to 10 years', '2000 W', '230V', 2831.47),
(19, 'Samsung RB34T602ESA Fridge-Freezer', 'Freestanding fridge-freezer that combines efficient cooling with modern design. It features SpaceMax™ Technology, allowing for thinner walls and increased internal capacity without expanding external dimensions.', 11, 2, '$630.00', 'images/home-Comfort/Samsung-RB34T602ESA-Fridge-Freezer.png', '~77.08 kg CO₂/year', ' A+ energy rating', 4, '1 year', 'Annual energy consumption is 256 kWh', '220V–240V', 630),
(20, 'LG F4V910WTSE Washing Machine', '10.5 kg capacity, front-loading washing machine that combines advanced technology with energy efficiency.', 10, 2, '$757.51', 'images/home-Comfort/LG F4V910WTSE-Washing-Machine.png', ' ~42.45 kg CO₂/year', 'A+++ energy rating', 4, '5 years', '143 kWh per year', '230V', 757.51),
(21, 'LG WKGX201HWA WashTower', 'Ultra Large Capacity 4.5 cu.ft. Washer and 7.4 cu.ft. Dryer let you clean larger loads.', 10, 2, '$1,999.00', 'images/home-Comfort/LG WKGX201HWA WashTower.png', '~62 kg CO₂/year', 'ENERGY STAR® certified', 4, '1 to 3 years', 'Not Specified', '120V', 1999),
(22, 'GE ENERGY STAR® Certified Dishwasher', 'ENERGY STAR® Certified Dishwashers are designed to be more energy and water-efficient than standard models. They incorporate features like soil sensors, improved water filtration, and efficient jets to reduce energy consumption.', 15, 2, '$400.00', 'images/home-Comfort/GE-ENERGY-STAR-Certified-Dishwasher.png', 'By using less energy and water, these dishwashers help reduce greenhouse gas emissions', 'ENERGY STAR certified, 5% more energy efficient and 15% more water efficient than standard models.', 6, '1 year', '1,200–1,500 W', '120V', 400),
(23, 'Hotpoint Tumble Dryer (NT M11 82XB)', 'Count on the Hotpoint ActiveCare NT M11 82XB white 8kg Tumble Dryer to deliver soft and perfectly dried clothes. The ActiveCare technology reduces fabric wear by up to 40%*, keeping your clothes looking their best for longer.', 13, 2, '$534.29', 'images/home-Comfort/Hotpoint-Tumble-Dryer-(NT-M11-82XB).png', '~73.58 kg CO₂/year', 'A++ energy rating', 5, 'Parts 10 years, Labour 1 year', 'Not Specified', '220–240 V', 534.29),
(24, 'Elica NikolaTesla Switch Induction Hob', 'This induction hob has an invisible extraction system. This system comes alive with one gesture, filtering the air and making it healthier.', 14, 2, '$4,999.00', 'images/home-Comfort/Elica-NikolaTesla-Switch-Induction-Hob.png', '~42.45 kg CO₂/year', 'A++ energy rating', 7, '2 to 5 years', '175 W', '220–240 V', 4999);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `testimonial` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_id`, `name`, `email`, `testimonial`, `user_id`) VALUES
(3, 'Mariam Arshad', 'mariamarshad137@gmail.com', 'EcoVoltify made it so easy to switch to green electronics. I feel better knowing my purchases support a healthier planet.', 1),
(4, 'Laiba Emaan', 'Laiba@gmail.com', 'Tracking my carbon impact has never been easier. The carbon tracker really opened my eyes to how small changes matter.', 2),
(5, 'Fizzah Farooq', 'fizzahfarooq767@yahoo.com', 'EcoVoltify isn’t just a store—it’s a movement. Love how they combine tech, sustainability, and real-world impact', 3),
(6, 'maham', 'mahamarshad222@gmail.com', 'Every purchase feels meaningful. I get quality eco-friendly gadgets and contribute to tree planting at the same time.', 4),
(7, 'Hamnah Adnan', 'hamnah_adnan@gmail.com', 'The carbon tracker feature is amazing. It’s satisfying to see the positive impact I’m making with each order.\r\n', 5),
(8, 'Diya Fatima', 'diyafatima@gmail.com', 'I’ve recommended EcoVoltify to all my friends. Their energy-efficient gadgets are top quality and eco-smart.', 6),
(9, 'Talat Aisha', 'talataisha34@gmail.com', 'Knowing part of my purchase helps plant trees makes every order feel like a step toward a greener future.🌳', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `phoneno`, `datetime`, `address`, `postal_code`, `city`) VALUES
(1, 'Mariam Arshad', 'mariamarshad137@gmail.com', 'hehe', 2147483647, '2025-05-11 19:33:05', 'A-483, sector 11-B, North Karachi', '75850', 'Karachi'),
(2, 'Laiba Emaan', 'Laiba@gmail.com', 'fooffood44', 2147483647, '2025-05-11 19:00:55', 'Korangi', '75850', 'Karachi'),
(3, 'Fizzah Farooq', 'fizzahfarooq767@yahoo.com', 'fgfg567', 0, '', '', '', ''),
(4, 'maham', 'mahamarshad222@gmail.com', 'abc123', 0, '', '', '', ''),
(5, 'Hamnah Adnan', 'hamnah_adnan@gmail.com', 'water247365', 0, '', '', '', ''),
(6, 'Diya Fatima', 'diyafatima@gmail.com', 'codercoder566', 0, '', '', '', ''),
(7, 'Talat Aisha', 'talataisha34@gmail.com', 'talataisha', 0, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
