# 🛍️ Modern E-Commerce Platform

A full-featured, responsive e-commerce web application built with **PHP, MySQL, and Bootstrap** that replicates core Amazon functionality with a modern design and secure architecture. This project serves as a robust foundation for building custom online stores.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PHP Version](https://img.shields.io/badge/PHP-7.4%2B-blue.svg)](https://www.php.net/)
[![Database](https://img.shields.io/badge/Database-MySQL-orange.svg)](https://www.mysql.com/)
[![Frontend](https://img.shields.io/badge/Frontend-Bootstrap%205-purple.svg)](https://getbootstrap.com/)


*(Note: Replace the image link above with a screenshot of your project's homepage)*

---

## ✨ Features

This platform is packed with essential features to deliver a seamless shopping experience.

#### 🛒 Core Shopping Features
- **Dynamic Product Catalog:** Browse products with advanced filtering by brand, price range, and sorting options.
- **AJAX-Powered Shopping Cart:** A session-based cart with real-time updates (add, update, remove) without page reloads.
- **Comprehensive Product Details:** View detailed product pages with image galleries, descriptions, and pricing.
- **Secure Checkout Process:** A multi-step, validated form for smooth and secure order placement.
- **Order Management:** Receive order confirmations and track order history.

#### 💻 Technical & Security Features
- **Responsive Design:** A mobile-first interface built with Bootstrap 5, ensuring a great experience on all devices.
- **SQL Injection Protection:** Uses PDO prepared statements to secure all database queries.
- **XSS Prevention:** All user-generated output is sanitized using `htmlspecialchars()` to prevent cross-site scripting.
- **Secure Session Management:** Ensures user and cart data is handled safely.
- **Transactional Integrity:** Database transactions are used during order placement to prevent data corruption.

---

## 🚀 Getting Started

Follow these instructions to get a local copy of the project up and running for development and testing.

### Prerequisites

- PHP 7.4 or higher
- MySQL 5.7 or higher
- A web server like Apache or Nginx
- Git

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/your-repo-name.git
    cd your-repo-name
    ```

2.  **Database Setup:**
    - Create a new MySQL database.
    ```sql
    CREATE DATABASE ecommerce_db;
    ```
    - Import the provided SQL schema and data from the `amazon.sql` file.
    ```bash
    # From your terminal
    mysql -u your_username -p ecommerce_db < Database/amazon.sql
    ```

3.  **Configure Database Connection:**
    - Rename `config/db.example.php` to `config/db.php`.
    - Edit `config/db.php` with your database credentials:
    ```php
    <?php
    $host = 'localhost';
    $dbname = 'ecommerce_db';
    $username = 'your_root_user'; // e.g., 'root'
    $password = 'your_db_password';
    
    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        die("Connection failed: " . $e->getMessage());
    }
    ?>
    ```

4.  **Run the Application:**
    - Start your local web server (e.g., XAMPP, WAMP) and navigate your browser to the project directory.
    - **OR**, use PHP's built-in server for quick testing:
    ```bash
    # From the project's root directory
    php -S localhost:8000
    ```
    - You can now access the application at `http://localhost:8000`.

---

## 📁 Project Structure

The project follows a logical and organized file structure to make development and maintenance easier.

```
your-repo-name/
├── config/
│   └── db.php                 # Database configuration
├── includes/
│   ├── header.php             # Site header
│   └── footer.php             # Site footer
├── assets/
│   ├── css/                   # All CSS files
│   └── js/                    # All JavaScript files
├── core_pages/                # Renamed for clarity
│   ├── index.php              # Homepage
│   ├── category.php           # Product listing page
│   ├── product.php            # Product details page
│   ├── cart.php               # Shopping cart
│   ├── checkout.php           # Checkout process
│   └── ...                    # Other core application pages
└── Database/
    └── amazon.sql             # Database schema and data
```

---

## 🔮 Roadmap: Future Enhancements

We have a clear vision for making this platform even better. Future additions include:

- [ ] **User Authentication:** Complete user registration, login, and profile management.
- [ ] **Admin Dashboard:** A powerful backend to manage products, orders, and users.
- [ ] **Product Reviews & Ratings:** Allow customers to rate and review products.
- [ ] **Wishlist Functionality:** Enable users to save products for later.
- [ ] **Payment Gateway Integration:** Integrate popular payment gateways like Stripe or PayPal.
- [ ] **Email Notifications:** Send automated emails for order confirmation, shipping, etc.

---

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

---

## 📄 License

This project is distributed under the MIT License. See the `LICENSE` file for more information.

---

**Built with ❤️ using PHP, MySQL, and Bootstrap.**
