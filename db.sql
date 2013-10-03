CREATE TABLE pages (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    title VARCHAR(64) NOT NULL,
    content TEXT NOT NULL,
    with_form VARCHAR(64),

    PRIMARY KEY (id),
    UNIQUE (name)
) DEFAULT CHARSET=utf8;

INSERT INTO pages (name, title, content) VALUES ('about', '关于本测试', '');
INSERT INTO pages (name, title, content, with_form) VALUES ('test', '二面笔试', '', 'yes');

CREATE TABLE form_data (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL,
    commen VARCHAR(128) NOT NULL,
    introduction TEXT NOT NULL,
    jiecao INTEGER NOT NULL,
    meizhi VARCHAR(8) NOT NULL,

    PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;

CREATE TABLE admin (
    id INTEGER NOT NULL AUTO_INCREMENT,
    username VARCHAR(32) NOT NULL,
    password VARCHAR(60) NOT NULL,
	
    PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;

INSERT INTO admin (username, password) VALUES ('testAdmin', 'congratulation');

CREATE TABLE injectors (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    way TINYINT NOT NULL,
    time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;
