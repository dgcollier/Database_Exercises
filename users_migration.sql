USE codeup_test_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        first_name VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL,
        username VARCHAR(255) NOT NULL,
        password VARCHAR(255) NOT NULL,
        current_account_balance DECIMAL(15,2), /* $$ balance can be null */
        phone_number VARCHAR(14) NOT NULL, /* needs to be varchar */
        zip_code VARCHAR(11),/* can be >= 10 digits starting with 429 */
        member_since DATE NOT NULL,
        last_login_time DATETIME NOT NULL,
        customer_history TEXT,
        PRIMARY KEY (id),
        UNIQUE (username)
);