-- 王越个人网站数据库设计
-- 创建数据库
CREATE DATABASE IF NOT EXISTS wangyue_website;
USE wangyue_website;

-- 个人信息表
CREATE TABLE personal_info (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    title VARCHAR(200),
    university VARCHAR(200),
    major VARCHAR(100),
    location VARCHAR(200),
    email VARCHAR(100),
    github_url VARCHAR(200),
    linkedin_url VARCHAR(200),
    bio TEXT,
    avatar_url VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 教育经历表
CREATE TABLE education (
    id INT PRIMARY KEY AUTO_INCREMENT,
    personal_info_id INT,
    degree VARCHAR(200) NOT NULL,
    institution VARCHAR(200) NOT NULL,
    period VARCHAR(50),
    description TEXT,
    gpa DECIMAL(3,2),
    FOREIGN KEY (personal_info_id) REFERENCES personal_info(id) ON DELETE CASCADE
);

-- 技能表
CREATE TABLE skills (
    id INT PRIMARY KEY AUTO_INCREMENT,
    personal_info_id INT,
    category VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    proficiency INT CHECK (proficiency BETWEEN 1 AND 5), -- 1-5级熟练度
    FOREIGN KEY (personal_info_id) REFERENCES personal_info(id) ON DELETE CASCADE
);

-- 项目表
CREATE TABLE projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    personal_info_id INT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    technologies TEXT, -- JSON格式存储技术栈
    category VARCHAR(100),
    project_url VARCHAR(500),
    github_url VARCHAR(500),
    featured BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (personal_info_id) REFERENCES personal_info(id) ON DELETE CASCADE
);

-- 联系消息表
CREATE TABLE contact_messages (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    status ENUM('new', 'read', 'replied') DEFAULT 'new',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 插入示例数据
INSERT INTO personal_info (name, title, university, major, location, email, github_url, linkedin_url, bio) VALUES
('王越', '温州大学计算机科学学生', '温州大学', '计算机科学', '温州，浙江', 'wangyue@wzu.edu.cn', 'https://github.com/wangyue', 'https://linkedin.com/in/wangyue', '温州大学计算机科学专业学生，专注于前端开发与用户体验设计。热爱技术创新，致力于打造优雅、高效的数字化解决方案。');

SET @personal_id = LAST_INSERT_ID();

INSERT INTO education (personal_info_id, degree, institution, period, description, gpa) VALUES
(@personal_id, '计算机科学学士', '温州大学', '2022-2026', '主修课程：数据结构、算法、Web开发、数据库系统', 3.8);

INSERT INTO skills (personal_info_id, category, name, proficiency) VALUES
(@personal_id, '前端', 'Vue.js', 5),
(@personal_id, '前端', 'React', 4),
(@personal_id, '前端', 'TypeScript', 4),
(@personal_id, '前端', 'Tailwind CSS', 5),
(@personal_id, '后端', 'Node.js', 4),
(@personal_id, '后端', 'Express', 4),
(@personal_id, '后端', 'MySQL', 4),
(@personal_id, '工具', 'Git', 5),
(@personal_id, '工具', 'Docker', 3),
(@personal_id, '工具', 'VS Code', 5);

INSERT INTO projects (personal_info_id, title, description, technologies, category, featured) VALUES
(@personal_id, '智能课程管理系统', '为温州大学开发的课程管理平台，支持课程安排、作业提交、成绩查询等功能。', '["Vue.js", "Node.js", "MySQL"]', '校园项目', TRUE),
(@personal_id, '温州美食地图', '基于地理位置的美食推荐应用，展示温州特色美食文化与餐厅信息。', '["React", "地图API", "Firebase"]', '个人项目', TRUE);

-- 创建索引以提高查询性能
CREATE INDEX idx_projects_featured ON projects(featured);
CREATE INDEX idx_contact_status ON contact_messages(status);
CREATE INDEX idx_skills_category ON skills(category);