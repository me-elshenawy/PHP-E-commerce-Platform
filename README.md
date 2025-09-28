# 🛍️ Modern E-Commerce Platform (Amazon Style)

A full-featured, responsive e-commerce web application built with **PHP, MySQL, and Bootstrap**. This project replicates core Amazon functionality with a modern, clean design and a secure, scalable architecture.

[![PHP Version](https://img.shields.io/badge/PHP-7.4%2B-blue.svg)](https://php.net)
[![MySQL Version](https://img.shields.io/badge/MySQL-5.7%2B-orange.svg)](https://www.mysql.com/)
[![Bootstrap Version](https://img.shields.io/badge/Bootstrap-5-purple.svg)](https://getbootstrap.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## ✨ Features

### 🛒 Core Shopping Experience
- **Dynamic Product Catalog**: Browse products by category with advanced filtering.
- **Advanced Search**: Quickly find products by name or brand.
- **Smart Shopping Cart**: Session-based cart with real-time AJAX updates (add, update, remove without page reload).
- **Product Details Page**: Comprehensive product information with image galleries and detailed descriptions.
- **Secure Checkout Process**: A multi-step, user-friendly checkout flow with robust form validation.
- **Order Management**: Users can view their order history and track order status.

### 💻 Technical Highlights
- **Responsive First Design**: Built with Bootstrap 5 for a seamless experience on all devices (mobile, tablet, and desktop).
- **Secure Architecture**: Utilizes PDO prepared statements to prevent SQL injection and `htmlspecialchars()` to prevent XSS attacks.
- **AJAX Integration**: Asynchronous updates for the shopping cart provide a smooth and modern user experience.
- **Session Management**: Securely handles user sessions and shopping cart persistence.
- **Optimized Database**: A well-structured schema ensures data integrity and performance.
- **Cross-Browser Compatible**: Works flawlessly on all modern web browsers.

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- **PHP** 7.4 or higher
- **MySQL** 5.7 or higher
- A web server like **Apache** or **Nginx**
- **Git**

### Installation

1.  **Clone the repository** to your local machine:
    ```bash
    git clone https://github.com/me-elshenawy/PHP-E-commerce-Platform.git
    cd PHP-E-commerce-Platform
    ```

2.  **Database Setup**:
    *   Create a new MySQL database. For example, `ecommerce_db`.
    *   Import the provided SQL schema from the `Database/amazon.sql` file. You can use a tool like phpMyAdmin or run the following command:
    ```bash
    mysql -u your_username -p ecommerce_db < Database/amazon.sql
    ```

3.  **Configure Database Connection**:
    *   Open the `config/db.php` file.
    *   Update the database credentials with your local setup:
    ```php
    <?php
    $host = 'localhost';
    $dbname = 'ecommerce_db';      // Your database name
    $username = 'your_username';   // Your database username
    $password = 'your_password';   // Your database password
    ?>
    ```

4.  **Run the Application**:
    *   Place the project folder in your web server's root directory (e.g., `htdocs` for XAMPP or `www` for WampServer).
    *   Open your web browser and navigate to:
    ```
    http://localhost/PHP-E-commerce-Platform
    ```

## 📁 Project Structure

```
PHP-E-commerce-Platform/
├── config/
│   └── db.php                 # Database connection settings
├── includes/
│   ├── header.php             # Global site header
│   └── footer.php             # Global site footer
├── assets/
│   ├── css/                   # All CSS files
│   ├── js/                    # All JavaScript files
│   └── uploads/               # Directory for product images
├── core_pages/
│   ├── index.php              # Homepage
│   ├── category.php           # Product listing page
│   ├── product.php            # Product details page
│   ├── cart.php               # Shopping cart
│   ├── checkout.php           # Checkout process
│   ├── place_order.php        # Handles order submission
│   └── cart_handler.php       # AJAX operations for the cart
└── Database/
    └── amazon.sql             # The database schema and data
```

## 🛡️ Security Features

This project was built with security in mind:
- **SQL Injection Protection**: All database queries are executed using PDO prepared statements.
- **Cross-Site Scripting (XSS) Prevention**: All outputs are sanitized using `htmlspecialchars()` to prevent malicious scripts.
- **Secure Session Management**: Sessions are handled securely to protect user data.
- **Server-Side Validation**: All user inputs are validated on the server to ensure data integrity.

## 🔮 Future Enhancements

This project has a solid foundation, but there's always room for growth. Here are some features planned for the future:

- [ ] **User Authentication**: A complete registration and login system for users.
- [ ] **Admin Dashboard**: A powerful backend to manage products, orders, and users.
- [ ] **Product Reviews & Ratings**: Allow users to rate and review products.
- [ ] **Payment Gateway Integration**: Integrate popular payment gateways like Stripe or PayPal.
- [ ] **Wishlist Functionality**: Allow users to save products for later.
- [ ] **Email Notifications**: Send order confirmations and shipping updates via email.

## 🤝 Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1.  Fork the Project.
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`).
4.  Push to the Branch (`git push origin feature/AmazingFeature`).
5.  Open a Pull Request.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for details.

---

**Built with ❤️ using PHP, MySQL, and Bootstrap**
