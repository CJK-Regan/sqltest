CREATE TABLE pages (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    title VARCHAR(64) NOT NULL,
    content TEXT NOT NULL,
    with_form VARCHAR(64),

    PRIMARY KEY (id),
    UNIQUE (name)
) DEFAULT CHARSET=utf8;

INSERT INTO pages (name, title, content) VALUES (
    'about',
    '关于本测试',
    '<ol><li>你的任务是想办法渗透进入网站后台</li>
    <li>1是你的唯一目标，网站的一切内容对你没有意义</li>
    <li>假如你不幸因2而陷入逻辑死循环，这是我们乐意见到的</li>
    <li>如果你还是不知道该做什么，可以选择看看首页，或者思考一下2，甚至揣摩一下3</li>
	<li>其实3是一句玩笑话，真正重要的是6</li>
	<li>请牢记2，其它的都不用管了</li>
	<li>请严肃认真地完成二面笔试内容，不然后果自负</li>
    <li>……</li>
    <li>……</li>
	<li>啊叻……不要这样看着我，我没什么要说的了=。=</li></ol>'
);
INSERT INTO pages (name, title, content, with_form) VALUES (
    'test',
    '二面笔试',
    '<p>没什么好说的，按钮在右下角……</p>',
    'yes'
);

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
