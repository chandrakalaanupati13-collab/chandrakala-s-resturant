CREATE DATABASE IF NOT EXISTS chandrakalas_restaurant CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE chandrakalas_restaurant;
CREATE TABLE IF NOT EXISTS menu_items (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(120) NOT NULL,
 category ENUM('Starters','Main Course','Biryani','Desserts','Beverages') NOT NULL,
 description VARCHAR(500) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 image_url VARCHAR(500),
 is_available BOOLEAN NOT NULL DEFAULT TRUE,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS reservations (
 id INT AUTO_INCREMENT PRIMARY KEY,
 customer_name VARCHAR(120) NOT NULL,
 email VARCHAR(160) NOT NULL,
 phone VARCHAR(25) NOT NULL,
 booking_date DATE NOT NULL,
 booking_time TIME NOT NULL,
 guests INT NOT NULL,
 special_request VARCHAR(500),
 status ENUM('Pending','Confirmed','Cancelled') NOT NULL DEFAULT 'Pending',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS messages (
 id INT AUTO_INCREMENT PRIMARY KEY,
 customer_name VARCHAR(120) NOT NULL,
 email VARCHAR(160) NOT NULL,
 subject VARCHAR(180) NOT NULL,
 message TEXT NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO menu_items(name,category,description,price,image_url) VALUES
('Andhra Chicken Biryani','Biryani','Aromatic basmati rice with traditional Andhra spices.',249,'https://images.unsplash.com/photo-1563379091339-03246963d96c?w=900'),
('Paneer Butter Masala','Main Course','Soft paneer in a creamy tomato and butter gravy.',219,'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=900'),
('Crispy Corn','Starters','Golden sweet corn tossed with herbs and spices.',139,'https://images.unsplash.com/photo-1626082927389-6cd097c629bc?w=900'),
('Gulab Jamun','Desserts','Soft milk dumplings in fragrant sugar syrup.',89,'https://images.unsplash.com/photo-1666190092159-8d3c6f1a7b30?w=900'),
('Fresh Lime Soda','Beverages','Refreshing lime soda served chilled.',69,'https://images.unsplash.com/photo-1513558161293-c6883fdf7b1b?w=900'),
('Veg Special Thali','Main Course','A traditional platter with seasonal sides.',199,'https://images.unsplash.com/photo-1547592180-85f173990554?w=900');
