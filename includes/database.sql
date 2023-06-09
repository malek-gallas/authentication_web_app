CREATE DATABASE IF NOT EXISTS auth;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(127) NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    token VARCHAR(255) NOT NULL,
    token_expiration DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    failed_login_attempts INT NOT NULL DEFAULT 0,
    locked TINYINT(1) NOT NULL DEFAULT 0,
    lockout_expiration DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    isValid TINYINT(1) NOT NULL DEFAULT 0,
    INDEX idx_email (email)
);