CREATE TABLE authors (
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE posts (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       author_id INT NOT NULL,
                       title VARCHAR(200) NOT NULL,
                       word_count INT CHECK (word_count > 0),
                       views INT DEFAULT 0 CHECK (views >= 0),
                       FOREIGN KEY (author_id) REFERENCES authors(id)
);
