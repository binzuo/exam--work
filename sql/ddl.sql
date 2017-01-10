DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;

# user table
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) UNIQUE
  COMMENT '用户名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码',
  role     VARCHAR(255) NOT NULL DEFAULT 'user'
  COMMENT 'admin:管理员; user:普通用户'
)
  COMMENT '用户表';
# work table
DROP TABLE IF EXISTS exam.work;
CREATE TABLE exam.work (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  worknumber VARCHAR(255) NOT NULL
  COMMENT '岗位编号',
  workname VARCHAR(255) NOT NULL
  COMMENT '岗位名称',
  workduty     VARCHAR(255) NOT NULL
  COMMENT '岗位职责',
  workneed VARCHAR(255) NOT NULL
  COMMENT '岗位要求',
  worknote VARCHAR(255)
  COMMENT '其他说明'

)
  COMMENT '岗位信息表';
# person table
DROP TABLE IF EXISTS exam.person;
CREATE TABLE exam.person (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) UNIQUE
  COMMENT '姓名',
  sex VARCHAR(255) NOT NULL
  COMMENT '性别',
  xueli     VARCHAR(255) NOT NULL
  COMMENT '学历',
  major VARCHAR(255) NOT NULL
  COMMENT '专业',
  skill VARCHAR(255)
  COMMENT '技术',
  workId INT
  COMMENT 'PK'
)
  COMMENT '个人信息表';
ALTER TABLE exam.person
    ADD CONSTRAINT fk_person_workId
FOREIGN KEY (workId)
  REFERENCES exam.work(id);


INSERT INTO exam.user VALUES (NULL, 'a', 'a', 'admin');
INSERT INTO exam.user VALUES (NULL, 'b', 'b', 'user');
INSERT INTO exam.user VALUES (NULL, 'c', 'c', 'user');

SELECT *
FROM exam.user;
SELECT *
FROM exam.work;
SELECT *
FROM exam.person;
SELECT
  w.workname,
  p.id,
  p.username,
  p.sex,
  p.xueli,
  p.major,
  p.skill
FROM exam.work w INNER JOIN exam.person p ON w.id = p.workId
WHERE p.id=1;