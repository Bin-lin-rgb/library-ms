/*
 Navicat Premium Data Transfer

 Source Server         : home
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 03/07/2022 11:41:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `adminType` int(11) NULL DEFAULT NULL COMMENT '管理员类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '12345', 1);
INSERT INTO `admin` VALUES (2, 'admin1', '12345', 0);
INSERT INTO `admin` VALUES (4, 'admin2', '12345', 0);

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `publish` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `isbn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍编号',
  `introduction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `language` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '语言',
  `price` double NULL DEFAULT NULL COMMENT '价格',
  `publish_date` date NULL DEFAULT NULL COMMENT '出版时间',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '书籍类型',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态：0未借出，1已借出',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_book_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1007 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '西游记', '施耐庵', '机械工业出版社', '100011', '师徒四人去西天取真经', '中文', 42, '2020-03-20', 1, 0);
INSERT INTO `book_info` VALUES (2, '三国演义', '罗贯中', '清华大学出版社', '100012', '东汉末年分三国', '中文', 48, '2018-03-30', 1, 1);
INSERT INTO `book_info` VALUES (3, '红楼梦', '曹雪芹', '机械工业出版社', '100013', '宝玉与众多男女之间故事', '中文', 39, '2019-04-04', 1, 1);
INSERT INTO `book_info` VALUES (4, '资本论', '马克思', '原子能出版社', '100014', '马克思的剩余价值理论', '英文', 42, '2019-04-05', 5, 0);
INSERT INTO `book_info` VALUES (5, '经济学原理', '马歇尔', '机械工业出版社', '100015', '西方经济学界公认为划时代的著作', '英文', 45, '2020-04-06', 5, 0);
INSERT INTO `book_info` VALUES (6, '大变局下的中国法治', '李卫东', '北京大学出版社', '100016', '十大经典法学著作', '中文', 42, '2015-04-05', 4, 1);
INSERT INTO `book_info` VALUES (7, 'VIUB book', 'Kenneth James', '科威特', '103458', 'The reason why a great man is great', 'Okamoto Eita', 2.96, '2013-10-30', 4, 1);
INSERT INTO `book_info` VALUES (8, 'LTGE book', 'Shannon Rivera', '苏丹', '102610', 'In a Telnet session, all communications,          ', 'Yao Shihan', 944.55, '2016-11-21', 1, 0);
INSERT INTO `book_info` VALUES (9, 'VORJ book', 'Danny Wright', '布基纳法索', '108809', 'Navicat provides a wide range advanced            ', 'Aoki Minato', 898.85, '2012-03-03', 2, 1);
INSERT INTO `book_info` VALUES (10, 'ZXRR book', 'Jerry Phillips', '喀麦隆', '109753', 'In a Telnet session, all communications,          ', 'Long Anqi', 905.97, '2006-02-06', 1, 0);
INSERT INTO `book_info` VALUES (11, 'ENHB book', 'Brenda Robertson', '圭亚那', '104471', 'Success consists of going from                    ', 'Koo Lik Sun', 688.73, '2016-07-22', 4, 1);
INSERT INTO `book_info` VALUES (12, 'LJFN book', 'Thelma Webb', '罗马尼亚', '106535', 'Anyone who has never made a mistake               ', 'Deng Jiehong', 593.47, '2020-01-25', 4, 0);
INSERT INTO `book_info` VALUES (13, 'RSME book', 'Jeff Brooks', '列支敦士登', '109796', 'To connect to a database or schema,               ', 'Keith Torres', 893.69, '2003-07-23', 2, 0);
INSERT INTO `book_info` VALUES (14, 'UEEJ book', 'Pamela Wright', '秘鲁', '108231', 'To open a query using an external                 ', 'Maeda Airi', 773.76, '2009-11-15', 2, 0);
INSERT INTO `book_info` VALUES (15, 'DEKN book', 'Raymond Wallace', '巴拿马', '107828', 'Navicat authorizes you to make                    ', 'Chiba Eita', 68.9, '2001-04-30', 2, 1);
INSERT INTO `book_info` VALUES (16, 'VTGA book', 'Harold Reyes', '泰国', '102856', 'Optimism is the one quality more                  ', 'Denise Hernandez', 159.43, '2009-01-14', 3, 1);
INSERT INTO `book_info` VALUES (17, 'NSXF book', 'Leroy Martinez', '摩尔多瓦共和国', '108306', 'The Synchronize to Database function              ', 'Rhonda Moreno', 995.66, '2015-07-08', 1, 1);
INSERT INTO `book_info` VALUES (18, 'SKVC book', 'Susan Washington', '沙特阿拉伯', '104701', 'Navicat Data Modeler is a powerful                ', 'Wong Wai Han', 734.41, '2012-08-05', 4, 1);
INSERT INTO `book_info` VALUES (19, 'CINS book', 'Elizabeth Chen', '巴林', '104236', 'If the plan doesn’t work, change                ', 'Takada Aoshi', 936.74, '2012-05-18', 5, 0);
INSERT INTO `book_info` VALUES (20, 'YFYL book', 'Sarah Porter', '古巴', '106642', 'If you wait, all that happens is you get older.', 'Au Tin Lok', 505.08, '2009-11-27', 3, 1);
INSERT INTO `book_info` VALUES (21, 'EKJN book', 'Rita Herrera', '利比亚', '106511', 'To get a secure connection, the                   ', 'Jiang Zhiyuan', 230.84, '2006-04-16', 2, 0);
INSERT INTO `book_info` VALUES (22, 'QLBA book', 'Glenn Anderson', '拉脱维亚', '107497', 'Champions keep playing until they get it right.', 'Gu Zhennan', 994.44, '2018-09-06', 4, 1);
INSERT INTO `book_info` VALUES (23, 'ATSZ book', 'Leroy Hunt', '基里巴斯', '108168', 'If your Internet Service Provider                 ', 'Ho Wing Kuen', 892.06, '2015-07-02', 4, 0);
INSERT INTO `book_info` VALUES (24, 'ARDI book', 'Melvin Moore', '西班牙', '102222', 'In a Telnet session, all communications,          ', 'Otsuka Mio', 441.96, '2016-02-22', 4, 0);
INSERT INTO `book_info` VALUES (25, 'PKHX book', 'Anne Freeman', '毛里塔尼亚', '103611', 'To clear or reload various internal               ', 'Lo Ka Ming', 930.54, '2009-07-08', 4, 0);
INSERT INTO `book_info` VALUES (26, 'TJOZ book', 'Frances Fisher', '塞舌尔', '103587', 'After comparing data, the window                  ', 'Dawn Harris', 172.63, '2012-06-20', 3, 0);
INSERT INTO `book_info` VALUES (27, 'CLBA book', 'Nathan Olson', '洪都拉斯', '102536', 'In other words, Navicat provides                  ', 'Kimberly Johnson', 553.06, '2004-02-29', 1, 1);
INSERT INTO `book_info` VALUES (28, 'BEHR book', 'Terry Castro', '伊拉克', '109392', 'SSH serves to prevent such vulnerabilities        ', 'Fukuda Hana', 403.97, '2003-01-10', 5, 0);
INSERT INTO `book_info` VALUES (29, 'GCMB book', 'Jeremy Moreno', '马绍尔群岛', '103701', 'After logged in the Navicat Cloud                 ', 'Nakagawa Eita', 839.95, '2019-08-22', 1, 0);
INSERT INTO `book_info` VALUES (30, 'DXYE book', 'Juanita Crawford', '马达加斯加', '109757', 'To get a secure connection, the                   ', 'Lam Chiu Wai', 142.7, '2016-11-13', 4, 1);
INSERT INTO `book_info` VALUES (31, 'UYEL book', 'Carrie Gardner', '土耳其', '104852', 'Navicat Monitor is a safe, simple                 ', 'Xue Rui', 696.61, '2007-07-03', 1, 0);
INSERT INTO `book_info` VALUES (32, 'ERZS book', 'Maria Miller', '也门', '106092', 'It is used while your ISPs do not                 ', 'Kong Lu', 778.78, '2005-01-27', 4, 0);
INSERT INTO `book_info` VALUES (33, 'TXLJ book', 'Allen Gutierrez', '苏丹', '108848', 'The Main Window consists of several               ', 'Koyama Ren', 762.64, '2004-04-21', 5, 0);
INSERT INTO `book_info` VALUES (34, 'UQAC book', 'Jimmy Murray', '埃斯瓦蒂尼', '101743', 'All the Navicat Cloud objects are                 ', 'Dale Butler', 117.62, '2003-01-15', 2, 0);
INSERT INTO `book_info` VALUES (35, 'EFRQ book', 'Wayne Lee', '科威特', '100951', 'In other words, Navicat provides                  ', 'Yokoyama Seiko', 174.42, '2019-03-31', 3, 1);
INSERT INTO `book_info` VALUES (36, 'HWKR book', 'Sheila Cooper', '克罗地亚', '109515', 'Secure Sockets Layer(SSL) is a                    ', 'Qin Yunxi', 612.25, '2014-04-17', 2, 0);
INSERT INTO `book_info` VALUES (37, 'QGAS book', 'Barbara Tucker', '美国', '100231', 'Instead of wondering when your                    ', 'Frederick Murray', 439.42, '2015-10-21', 4, 1);
INSERT INTO `book_info` VALUES (38, 'RDPC book', 'Roger Jimenez', '蒙古', '105676', 'Export Wizard allows you to export                ', 'Cheng Ting Fung', 103.99, '2019-10-27', 3, 0);
INSERT INTO `book_info` VALUES (39, 'ZOLZ book', 'Elizabeth Brooks', '日本', '103698', 'Optimism is the one quality more                  ', 'Fong Wai San', 920.76, '2006-07-15', 3, 0);
INSERT INTO `book_info` VALUES (40, 'HBHI book', 'Frederick Romero', '莫桑比克', '103581', 'The Main Window consists of several               ', 'Shing Siu Wai', 579.56, '2021-01-23', 3, 1);
INSERT INTO `book_info` VALUES (41, 'KIIG book', 'Annie Daniels', '圣多美和普林西比', '108968', 'A man’s best friends are his ten fingers.', 'Elizabeth Robertson', 790.7, '2007-08-09', 2, 0);
INSERT INTO `book_info` VALUES (42, 'ZGPD book', 'Grace Tran', '摩洛哥', '109745', 'The Synchronize to Database function              ', 'Yung Ka Ling', 90.35, '2011-08-15', 4, 0);
INSERT INTO `book_info` VALUES (43, 'UAKD book', 'Elizabeth Fox', '莱索托', '102235', 'The repository database can be                    ', 'Mao Zhiyuan', 312.47, '2004-11-17', 3, 0);
INSERT INTO `book_info` VALUES (44, 'YCEW book', 'Rodney Jordan', '利比里亚', '107973', 'Instead of wondering when your                    ', 'Chris Brooks', 429.01, '2004-12-20', 5, 1);
INSERT INTO `book_info` VALUES (45, 'NAKM book', 'Jeffrey Gibson', '匈牙利', '108359', 'Navicat 15 has added support for                  ', 'Kono Kazuma', 595.15, '2006-04-19', 4, 1);
INSERT INTO `book_info` VALUES (46, 'VJJG book', 'Allen Daniels', '圣马力诺', '108508', 'Anyone who has ever made anything                 ', 'Ho Wing Fat', 567.87, '2002-12-16', 4, 1);
INSERT INTO `book_info` VALUES (47, 'BTJD book', 'Mike Scott', '大韩民国', '108996', 'In the middle of winter I at last                 ', 'Jiang Zhennan', 124.81, '2020-05-18', 5, 0);
INSERT INTO `book_info` VALUES (48, 'FYLW book', 'Joe Morgan', '沙特阿拉伯', '102993', 'I may not have gone where I intended              ', 'Ota Eita', 256.21, '2000-04-25', 4, 1);
INSERT INTO `book_info` VALUES (49, 'ZFQO book', 'Mark Murphy', '洪都拉斯', '102833', 'You must be the change you wish                   ', 'Ma Rui', 94.52, '2014-11-01', 4, 0);
INSERT INTO `book_info` VALUES (50, 'VFYN book', 'Craig Alexander', '利比亚', '109882', 'Champions keep playing until they get it right.', 'Tong Wai Man', 603.78, '2000-09-08', 4, 1);
INSERT INTO `book_info` VALUES (51, 'OODW book', 'Louise Fox', '科特迪瓦', '103383', 'Typically, it is employed as an                   ', 'Lin Anqi', 635.01, '2019-04-11', 2, 0);
INSERT INTO `book_info` VALUES (52, 'FQEX book', 'Patrick Gomez', '马拉维', '102199', 'If it scares you, it might be a good thing to try.', 'Debbie Patterson', 352.96, '2006-03-22', 3, 1);
INSERT INTO `book_info` VALUES (53, 'LOFX book', 'Barry Nguyen', '德国', '100212', 'Navicat Cloud could not connect                   ', 'Lin Lu', 362.72, '2001-02-08', 3, 0);
INSERT INTO `book_info` VALUES (54, 'XYJP book', 'Marjorie Dixon', '纳米比亚', '100100', 'It wasn’t raining when Noah built the ark.      ', 'Terry Clark', 241.58, '2005-03-08', 5, 0);
INSERT INTO `book_info` VALUES (55, 'MEYV book', 'Jesse Mason', '罗马尼亚', '105943', 'Navicat is a multi-connections                    ', 'Hui Kar Yan', 878.69, '2001-03-17', 1, 1);
INSERT INTO `book_info` VALUES (56, 'AOIL book', 'Tina Herrera', '科摩罗', '104282', 'Import Wizard allows you to import                ', 'Mo Ka Keung', 294.5, '2017-02-19', 4, 0);
INSERT INTO `book_info` VALUES (57, 'HGHH book', 'Dale Aguilar', '新西兰', '107743', 'Navicat provides powerful tools                   ', 'Yue Hiu Tung', 41.54, '2003-06-15', 3, 1);
INSERT INTO `book_info` VALUES (58, 'XLPH book', 'Rhonda Ferguson', '克罗地亚', '106018', 'Sometimes you win, sometimes you learn.', 'Mok Sze Kwan', 824.99, '2020-03-06', 3, 1);
INSERT INTO `book_info` VALUES (59, 'STOL book', 'Juan Davis', '意大利', '104028', 'How we spend our days is, of course,              ', 'Harry Graham', 571.32, '2015-11-17', 2, 1);
INSERT INTO `book_info` VALUES (60, 'PYXQ book', 'Randall Diaz', '新加坡', '107496', 'If the Show objects under schema                  ', 'Mori Riku', 441.44, '2000-06-13', 4, 0);
INSERT INTO `book_info` VALUES (61, 'QLLL book', 'Barbara Freeman', '土耳其', '106152', 'You can select any connections,                   ', 'Miyazaki Yamato', 541.28, '2002-03-06', 1, 1);
INSERT INTO `book_info` VALUES (62, 'IAEY book', 'Thelma Bennett', '危地马拉', '102128', 'In other words, Navicat provides                  ', 'Meng Ho Yin', 424.67, '2000-01-20', 2, 1);
INSERT INTO `book_info` VALUES (63, 'AAAN book', 'Ernest Marshall', '沙特阿拉伯', '108866', 'Difficult circumstances serve as                  ', 'James Miller', 336.06, '2015-09-03', 4, 1);
INSERT INTO `book_info` VALUES (64, 'OUWC book', 'Ralph Ellis', '尼日尔', '104036', 'It is used while your ISPs do not                 ', 'Wang Yunxi', 221, '2014-03-07', 2, 0);
INSERT INTO `book_info` VALUES (65, 'DUSR book', 'Terry Hill', '乌干达', '108450', 'Secure Sockets Layer(SSL) is a                    ', 'Chris Nichols', 784.79, '2004-07-02', 2, 1);
INSERT INTO `book_info` VALUES (66, 'ZFJW book', 'Jerry Wagner', '秘鲁', '104797', 'The Main Window consists of several               ', 'Chiba Sakura', 967.14, '2007-12-03', 1, 0);
INSERT INTO `book_info` VALUES (67, 'MQVW book', 'Gladys Diaz', '乌克兰', '107425', 'Sometimes you win, sometimes you learn.', 'Qian Xiaoming', 33.05, '2017-11-07', 4, 1);
INSERT INTO `book_info` VALUES (68, 'MYVE book', 'Diana Scott', '阿尔及利亚', '107510', 'All journeys have secret destinations             ', 'Nishimura Sara', 941, '2002-07-05', 3, 0);
INSERT INTO `book_info` VALUES (69, 'NDCF book', 'Jason Ross', '伊拉克', '107563', 'A comfort zone is a beautiful place,              ', 'Heung Ka Ling', 822.48, '2006-10-07', 4, 1);
INSERT INTO `book_info` VALUES (70, 'SZRB book', 'Benjamin Weaver', '加纳', '103197', 'Remember that failure is an event, not a person.', 'Masuda Yuto', 764.99, '2019-10-22', 1, 0);
INSERT INTO `book_info` VALUES (71, 'NEID book', 'Bonnie Griffin', '挪威', '104776', 'You cannot save people, you can just love them.', 'Ng Kwok Wing', 419.08, '2006-06-22', 4, 1);
INSERT INTO `book_info` VALUES (72, 'GAAH book', 'Joyce Kelley', '玻利维亚', '108647', 'Import Wizard allows you to import                ', 'Nancy Stone', 535.95, '2021-08-23', 4, 1);
INSERT INTO `book_info` VALUES (73, 'CWGH book', 'Deborah West', '苏丹', '107323', 'Secure Sockets Layer(SSL) is a                    ', 'Deng Anqi', 821.81, '2012-06-24', 5, 1);
INSERT INTO `book_info` VALUES (74, 'OSAC book', 'Rodney Hill', '巴巴多斯', '106865', 'You will succeed because most people are lazy.', 'Fong Ka Keung', 929.17, '2016-11-02', 3, 1);
INSERT INTO `book_info` VALUES (75, 'TAJF book', 'Raymond Spencer', '阿富汗', '109010', 'Remember that failure is an event, not a person.', 'Chung Sum Wing', 413.23, '2006-11-13', 3, 0);
INSERT INTO `book_info` VALUES (76, 'HGWU book', 'Brenda Young', '莱索托', '100533', 'Navicat Monitor can be installed                  ', 'Zhang Ziyi', 168.55, '2018-04-25', 4, 1);
INSERT INTO `book_info` VALUES (77, 'MCLM book', 'Leonard Kelley', '赤道几内亚', '101464', 'If opportunity doesn’t knock, build a door.', 'Doris Mitchell', 4.51, '2007-08-30', 3, 0);
INSERT INTO `book_info` VALUES (78, 'AYIS book', 'Patricia Harris', '朝鲜民主主义人民共和国', '102697', 'The Information Pane shows the                    ', 'Gao Anqi', 426.71, '2002-01-02', 3, 0);
INSERT INTO `book_info` VALUES (79, 'VMNE book', 'Leslie Peterson', '波兰', '106155', 'In other words, Navicat provides                  ', 'Ho Wai Han', 402.03, '2016-10-02', 4, 0);
INSERT INTO `book_info` VALUES (80, 'VSGR book', 'Josephine Fernandez', '北马其顿', '101611', 'Anyone who has never made a mistake               ', 'Sato Aoi', 81.81, '2001-02-02', 3, 0);
INSERT INTO `book_info` VALUES (81, 'UBAK book', 'Anthony Gray', '摩纳哥', '108214', 'SQL Editor allows you to create                   ', 'Su Shihan', 730.85, '2019-06-22', 2, 0);
INSERT INTO `book_info` VALUES (82, 'MQCN book', 'Clarence Morris', '尼日尔', '103138', 'A query is used to extract data                   ', 'Yamada Mai', 514.66, '2017-02-23', 2, 1);
INSERT INTO `book_info` VALUES (83, 'AQUJ book', 'Randy Parker', '基里巴斯', '102187', 'If the Show objects under schema                  ', 'Walter Castillo', 15.12, '2020-09-17', 1, 1);
INSERT INTO `book_info` VALUES (84, 'YIER book', 'Brian Rose', '卢森堡', '105562', 'Anyone who has ever made anything                 ', 'Tang Anqi', 534.75, '2012-06-04', 1, 0);
INSERT INTO `book_info` VALUES (85, 'WIGX book', 'Carolyn Diaz', '纳米比亚', '101020', 'Anyone who has never made a mistake               ', 'Crystal Jordan', 996.21, '2010-12-09', 4, 0);
INSERT INTO `book_info` VALUES (86, 'QFKQ book', 'Karen Ford', '索马里', '106007', 'It is used while your ISPs do not                 ', 'Wu Shihan', 30.77, '2004-10-03', 2, 0);
INSERT INTO `book_info` VALUES (87, 'GHOT book', 'Tiffany Hunter', '加蓬', '101302', 'Flexible settings enable you to                   ', 'Donald Adams', 583.78, '2009-07-26', 1, 0);
INSERT INTO `book_info` VALUES (88, 'KFEB book', 'Alan Wagner', '塞舌尔', '103802', 'Navicat provides powerful tools                   ', 'Siu Tak Wah', 149.38, '2020-01-07', 4, 0);
INSERT INTO `book_info` VALUES (89, 'FWIB book', 'Vincent Munoz', '塞浦路斯', '102295', 'To open a query using an external                 ', 'Julie Hughes', 623.93, '2011-03-18', 2, 1);
INSERT INTO `book_info` VALUES (90, 'ZUNH book', 'Anne Jackson', '塞内加尔', '101543', 'All journeys have secret destinations             ', 'Huang Anqi', 157.41, '2011-05-24', 2, 0);
INSERT INTO `book_info` VALUES (91, 'JIEC book', 'Ryan Coleman', '斯里兰卡', '106537', 'All journeys have secret destinations             ', 'Fu Ziyi', 0.65, '2004-06-17', 4, 1);
INSERT INTO `book_info` VALUES (92, 'ZNIM book', 'Monica Roberts', '佐治亚州', '100264', 'Typically, it is employed as an                   ', 'Mike Wells', 262.47, '2007-09-05', 2, 0);
INSERT INTO `book_info` VALUES (93, 'HQOQ book', 'Nicole Lopez', '吉布地', '106111', 'The past has no power over the present moment.', 'Takada Ren', 471.38, '2004-09-09', 1, 1);
INSERT INTO `book_info` VALUES (94, 'IXUZ book', 'Christopher Bailey', '加拿大', '104345', 'You will succeed because most people are lazy.    ', 'Kwok Cho Yee', 710.52, '2020-03-03', 1, 1);
INSERT INTO `book_info` VALUES (95, 'OYMY book', 'David Washington', '蒙古', '102046', 'Instead of wondering when your                    ', 'Yam Lai Yan', 332.79, '2018-11-06', 4, 0);
INSERT INTO `book_info` VALUES (96, 'MQLL book', 'Frederick Hernandez', '安道尔', '105538', 'Remember that failure is an event, not a person.', 'Hu Rui', 612.66, '2017-05-02', 1, 1);
INSERT INTO `book_info` VALUES (97, 'DLKQ book', 'Ronald Williams', '科特迪瓦', '106299', 'Difficult circumstances serve as                  ', 'Norma Burns', 999.02, '2000-07-23', 3, 1);
INSERT INTO `book_info` VALUES (98, 'UITC book', 'Alan Olson', '圣露西亚', '109347', 'Such sessions are also susceptible                ', 'Noguchi Momoe', 386.83, '2006-03-26', 3, 1);
INSERT INTO `book_info` VALUES (99, 'FCNH book', 'Helen Aguilar', '沙特阿拉伯', '105426', 'Anyone who has never made a mistake               ', 'Jeffery Castillo', 101.03, '2018-08-07', 2, 0);
INSERT INTO `book_info` VALUES (100, 'GEVP book', 'Leroy Evans', '捷克共和国', '105897', 'Navicat Cloud could not connect                   ', 'Yuen Ka Keung', 626.19, '2022-01-24', 2, 0);
INSERT INTO `book_info` VALUES (101, 'MOEA book', 'Ellen Gomez', '摩洛哥', '105803', 'Anyone who has never made a mistake               ', 'Xu Lan', 238.29, '2017-07-15', 4, 0);
INSERT INTO `book_info` VALUES (102, 'GCRJ book', 'Doris Romero', '俄罗斯联邦', '108646', 'Secure Sockets Layer(SSL) is a                    ', 'Adam Johnson', 182.11, '2019-02-10', 1, 0);
INSERT INTO `book_info` VALUES (103, 'ZNAQ book', 'Peter Castillo', '緬甸', '107844', 'Instead of wondering when your                    ', 'Duan Rui', 549.3, '2021-06-26', 4, 1);
INSERT INTO `book_info` VALUES (104, 'RTNG book', 'Gloria Reed', '贝宁', '102430', 'If the plan doesn’t work, change                ', 'Fan Xiaoming', 652.99, '2003-05-23', 3, 0);
INSERT INTO `book_info` VALUES (105, 'KVUW book', 'Katherine Chen', '几内亚比绍', '104680', 'The repository database can be                    ', 'Shi Xiaoming', 241.8, '2010-07-23', 1, 0);
INSERT INTO `book_info` VALUES (106, 'ZGSL book', 'Jeremy Stevens', '摩纳哥', '108764', 'It wasn’t raining when Noah built the ark.', 'Han Zitao', 207.61, '2015-02-06', 2, 0);
INSERT INTO `book_info` VALUES (107, 'EHKU book', 'Susan Collins', '塞舌尔', '105492', 'If you wait, all that happens is you get older.', 'Okamoto Sara', 711.75, '2003-03-06', 5, 0);
INSERT INTO `book_info` VALUES (108, 'CWXJ book', 'Bradley Alvarez', '哈萨克斯坦', '102553', 'In other words, Navicat provides                  ', 'Song Zhiyuan', 730.05, '2005-03-21', 3, 0);
INSERT INTO `book_info` VALUES (109, 'KPPB book', 'Jane Grant', '意大利', '109266', 'It wasn’t raining when Noah built the ark.', 'Hsuan Tak Wah', 747.69, '2008-08-09', 3, 1);
INSERT INTO `book_info` VALUES (110, 'QNXS book', 'Alfred Brooks', '吉布地', '101475', 'If the plan doesn’t work, change                ', 'Miyamoto Daichi', 893.64, '2004-02-02', 3, 0);
INSERT INTO `book_info` VALUES (111, 'ZCXQ book', 'Rodney Chavez', '格林纳达', '109911', 'The reason why a great man is great               ', 'Nakano Kenta', 503.36, '2017-02-23', 2, 0);
INSERT INTO `book_info` VALUES (112, 'WGUV book', 'Harold Castillo', '斯里兰卡', '102990', 'HTTP Tunneling is a method for                    ', 'Fang Zhennan', 794.73, '2003-03-20', 1, 0);
INSERT INTO `book_info` VALUES (113, 'ENDF book', 'Bryan Schmidt', '格林纳达', '101874', 'HTTP Tunneling is a method for                    ', 'Frank Ruiz', 379.87, '2021-05-22', 4, 0);
INSERT INTO `book_info` VALUES (114, 'CNUT book', 'Ray Mendoza', '多哥', '107440', 'It provides strong authentication                 ', 'Kikuchi Kasumi', 373.3, '2019-10-24', 4, 1);
INSERT INTO `book_info` VALUES (115, 'BSXU book', 'Allen Murray', '乌兹别克斯坦', '105370', 'You cannot save people, you can just love them.', 'Siu Hiu Tung', 941.89, '2019-10-05', 1, 1);
INSERT INTO `book_info` VALUES (116, 'PAXK book', 'Louis Munoz', '喀麦隆', '107550', 'In the middle of winter I at last                 ', 'Fan Lu', 418.08, '2021-06-11', 3, 0);
INSERT INTO `book_info` VALUES (117, 'XEZN book', 'Wendy Nelson', '荷兰', '109399', 'If the plan doesn’t work, change                ', 'Ng Hok Yau', 645.08, '2000-02-06', 2, 1);
INSERT INTO `book_info` VALUES (118, 'UMUQ book', 'Justin Nichols', '突尼斯', '108904', 'Navicat authorizes you to make                    ', 'Lee Cho Yee', 865.38, '2001-11-25', 1, 0);
INSERT INTO `book_info` VALUES (119, 'RGHA book', 'Patrick Fernandez', '海地', '104043', 'It wasn’t raining when Noah built the ark.', 'Lam Suk Yee', 739.89, '2016-06-10', 2, 0);
INSERT INTO `book_info` VALUES (120, 'UKXM book', 'Francis Payne', '马达加斯加', '105649', 'Secure SHell (SSH) is a program                   ', 'Louis Anderson', 548.26, '2013-09-16', 2, 1);
INSERT INTO `book_info` VALUES (121, 'HWXC book', 'Sylvia Holmes', '菲律宾', '103228', 'Optimism is the one quality more                  ', 'Tsui Chiu Wai', 806.13, '2007-12-22', 4, 0);
INSERT INTO `book_info` VALUES (122, 'JDHT book', 'Rodney Kim', '波兰', '101189', 'Monitored servers include MySQL,                  ', 'Cai Anqi', 929, '2014-09-10', 4, 1);
INSERT INTO `book_info` VALUES (123, 'GSJG book', 'Phillip Jenkins', '加拿大', '109286', 'Navicat provides powerful tools                   ', 'Sato Minato', 795.69, '2022-07-02', 4, 1);
INSERT INTO `book_info` VALUES (124, 'RVYD book', 'Diana West', '新西兰', '107873', 'Anyone who has ever made anything                 ', 'Tang Ziyi', 442.48, '2003-11-02', 2, 0);
INSERT INTO `book_info` VALUES (125, 'FBFE book', 'William Gomez', '美国', '104425', 'Typically, it is employed as an                   ', 'Tan Rui', 298.28, '2016-12-26', 3, 1);
INSERT INTO `book_info` VALUES (126, 'YYOR book', 'Beverly Rice', '波斯尼亚和黑塞哥维那', '108679', 'If you wait, all that happens is you get older.', 'Ho Ka Man', 439.19, '2011-03-29', 2, 1);
INSERT INTO `book_info` VALUES (127, 'HECI book', 'Rose Robinson', '圣基茨和尼维斯', '104992', 'Export Wizard allows you to export                ', 'Wu Wing Sze', 258.92, '2016-06-12', 1, 0);
INSERT INTO `book_info` VALUES (128, 'OBME book', 'Todd Hall', '孟加拉国', '102860', 'Anyone who has ever made anything                 ', 'Wanda Hughes', 37.23, '2006-09-25', 4, 1);
INSERT INTO `book_info` VALUES (129, 'UNSD book', 'Amanda Morris', '土耳其', '101794', 'Anyone who has ever made anything                 ', 'Yuen Chi Yuen', 167.77, '2004-12-13', 4, 0);
INSERT INTO `book_info` VALUES (130, 'BNYQ book', 'Timothy Wells', '萨尔瓦多', '105118', 'Secure Sockets Layer(SSL) is a                    ', 'Nakamori Ryota', 792.22, '2005-11-06', 1, 1);
INSERT INTO `book_info` VALUES (131, 'BYHR book', 'Ellen Moreno', '格林纳达', '102455', 'If opportunity doesn’t knock, build a door.', 'To Chiu Wai', 258.45, '2017-08-06', 3, 1);
INSERT INTO `book_info` VALUES (132, 'KSGF book', 'Clara Young', '萨摩亚', '107646', 'Navicat Monitor requires a repository             ', 'Ren Jiehong', 770.35, '2006-01-07', 1, 0);
INSERT INTO `book_info` VALUES (133, 'AAEX book', 'Linda Hunter', '塞尔维亚', '104269', 'The first step is as good as half over.', 'Lai Siu Wai', 920.11, '2000-06-30', 4, 1);
INSERT INTO `book_info` VALUES (134, 'VTFG book', 'Richard Mendez', '几内亚比绍', '103741', 'If the plan doesn’t work, change                ', 'Lam Kar Yan', 558.05, '2012-11-05', 4, 1);
INSERT INTO `book_info` VALUES (135, 'NSWI book', 'Joel Hawkins', '乍得', '100112', 'The Main Window consists of several               ', 'Harada Tsubasa', 580.01, '2013-03-26', 3, 0);
INSERT INTO `book_info` VALUES (136, 'VBJO book', 'Mary Olson', '立陶宛', '105927', 'You must be the change you wish                   ', 'Yung Hok Yau', 923.21, '2017-04-02', 3, 1);
INSERT INTO `book_info` VALUES (137, 'CCIO book', 'Crystal Lee', '沙特阿拉伯', '109671', 'Remember that failure is an event, not a person.', 'Tan Anqi', 778.25, '2014-09-03', 2, 0);
INSERT INTO `book_info` VALUES (138, 'IBQX book', 'Amy Webb', '佛得角', '107086', 'With its well-designed Graphical                  ', 'Shibata Yamato', 410.98, '2006-06-17', 3, 1);
INSERT INTO `book_info` VALUES (139, 'FTKB book', 'Kevin Payne', '塞舌尔', '105326', 'The past has no power over the present moment.    ', 'Ando Kaito', 606.32, '2000-06-05', 3, 0);
INSERT INTO `book_info` VALUES (140, 'SRBG book', 'Theodore Jordan', '博茨瓦纳', '109571', 'SQL Editor allows you to create                   ', 'Lu Shihan', 917.06, '2001-10-23', 4, 1);
INSERT INTO `book_info` VALUES (141, 'RGQT book', 'Jeremy Ramirez', '苏丹', '100763', 'A query is used to extract data                   ', 'Ishikawa Mio', 469.39, '2009-07-21', 4, 0);
INSERT INTO `book_info` VALUES (142, 'XSAE book', 'Keith Wells', '巴拉圭', '103666', 'To connect to a database or schema,               ', 'Ishii Miu', 163.21, '2020-08-09', 4, 0);
INSERT INTO `book_info` VALUES (143, 'PCFM book', 'Ruby Mcdonald', '埃塞俄比亚', '105427', 'Difficult circumstances serve as                  ', 'Shi Xiaoming', 884.95, '2001-01-06', 4, 0);
INSERT INTO `book_info` VALUES (144, 'KPIR book', 'Harold Hicks', '圣基茨和尼维斯', '104825', 'Navicat Monitor can be installed                  ', 'Keith Brown', 227.04, '2009-05-11', 4, 1);
INSERT INTO `book_info` VALUES (145, 'MGKH book', 'John Butler', '帛硫', '103019', 'In the Objects tab, you can use                   ', 'Stanley Martinez', 687.7, '2012-01-21', 1, 1);
INSERT INTO `book_info` VALUES (146, 'MRCU book', 'Alan Porter', '刚果民主共和国', '109780', 'In the middle of winter I at last                 ', 'Shao Jialun', 402, '2018-10-18', 3, 0);
INSERT INTO `book_info` VALUES (147, 'LWXS book', 'Billy Rivera', '奥地利', '101348', 'The first step is as good as half over.           ', 'Dale Cox', 152.19, '2020-01-14', 4, 0);
INSERT INTO `book_info` VALUES (148, 'GILJ book', 'Rachel Payne', '图瓦卢', '100304', 'The Information Pane shows the                    ', 'Chung Fat', 914.68, '2018-12-13', 3, 1);
INSERT INTO `book_info` VALUES (149, 'BCDY book', 'Joyce Reyes', '尼日尔', '109822', 'Difficult circumstances serve as                  ', 'Sun Zhennan', 626.57, '2011-07-01', 4, 0);
INSERT INTO `book_info` VALUES (150, 'EPWI book', 'Ruby Tran', '津巴布韦', '102162', 'SSH serves to prevent such vulnerabilities        ', 'Ota Mio', 669.8, '2012-02-24', 4, 1);
INSERT INTO `book_info` VALUES (151, 'RVEA book', 'Carlos Palmer', '苏丹', '105040', 'Genius is an infinite capacity for taking pains.', 'Li Xiaoming', 397.67, '2020-07-31', 3, 0);
INSERT INTO `book_info` VALUES (152, 'WQHU book', 'Antonio Patel', '黑山共和国', '104153', 'How we spend our days is, of course,              ', 'Kondo Riku', 685.58, '2022-02-22', 4, 0);
INSERT INTO `book_info` VALUES (153, 'JUWN book', 'Lori Mendez', '保加利亚', '102881', 'You cannot save people, you can just love them.', 'Kam Ka Ling', 276.29, '2002-09-24', 1, 0);
INSERT INTO `book_info` VALUES (154, 'QIEV book', 'Helen Nichols', '法国', '107893', 'You can select any connections,                   ', 'Au On Na', 453.17, '2009-04-14', 4, 0);
INSERT INTO `book_info` VALUES (155, 'WKQJ book', 'Harold Stevens', '阿根廷', '105448', 'The Synchronize to Database function              ', 'Kam Chiu Wai', 407.35, '2011-04-24', 1, 1);
INSERT INTO `book_info` VALUES (156, 'KOJS book', 'Kim Murray', '斯里兰卡', '101919', 'Navicat Monitor requires a repository             ', 'Chang Chiu Wai', 716.14, '2014-06-18', 4, 1);
INSERT INTO `book_info` VALUES (157, 'BWML book', 'Ann Fisher', '刚果', '105314', 'With its well-designed Graphical                  ', 'Steve Garcia', 713.2, '2003-07-21', 1, 1);
INSERT INTO `book_info` VALUES (158, 'AJAV book', 'Larry Young', '萨尔瓦多', '105816', 'Navicat provides powerful tools                   ', 'Iwasaki Hikaru', 131.54, '2016-05-31', 5, 0);
INSERT INTO `book_info` VALUES (159, 'OZHX book', 'Thelma Russell', '新加坡', '106307', 'The Navigation pane employs tree                  ', 'Meng Sau Man', 457.1, '2013-08-04', 5, 1);
INSERT INTO `book_info` VALUES (160, 'CDPV book', 'Heather Hamilton', '索马里', '108403', 'The Synchronize to Database function              ', 'Sasaki Yota', 820.55, '2010-03-18', 3, 1);
INSERT INTO `book_info` VALUES (161, 'LIXC book', 'Thelma Vargas', '阿拉伯联合酋长国', '102252', 'In the Objects tab, you can use                   ', 'Arai Rena', 231.55, '2017-10-20', 2, 1);
INSERT INTO `book_info` VALUES (162, 'QMEW book', 'Elaine Gutierrez', '也门', '104174', 'All the Navicat Cloud objects are                 ', 'Abe Yamato', 46.88, '2005-03-27', 4, 0);
INSERT INTO `book_info` VALUES (163, 'WKTN book', 'Douglas Jimenez', '伊朗（伊斯兰共和国）', '108182', 'A query is used to extract data                   ', 'Wan Wai Yee', 956.27, '2007-05-26', 3, 0);
INSERT INTO `book_info` VALUES (164, 'COGA book', 'Herbert Silva', '几内亚', '103835', 'The repository database can be                    ', 'Kudo Hina', 190.61, '2021-05-24', 4, 0);
INSERT INTO `book_info` VALUES (165, 'JNXV book', 'Ruby Thomas', '科摩罗', '108903', 'I may not have gone where I intended              ', 'Tang Lan', 934.92, '2021-06-10', 2, 0);
INSERT INTO `book_info` VALUES (166, 'MQTN book', 'Rebecca Parker', '加蓬', '105108', 'Typically, it is employed as an                   ', 'Fukuda Mio', 447.11, '2015-11-03', 3, 0);
INSERT INTO `book_info` VALUES (167, 'LHYS book', 'Kyle Murphy', '基里巴斯', '107103', 'It wasn’t raining when Noah built the ark.', 'Yokoyama Minato', 627.64, '2020-05-06', 4, 1);
INSERT INTO `book_info` VALUES (168, 'ZBFV book', 'Marcus James', '秘鲁', '106617', 'It provides strong authentication                 ', 'Kao Wai Yee', 863.73, '2008-08-30', 2, 1);
INSERT INTO `book_info` VALUES (169, 'WSML book', 'Ralph Robinson', '巴哈马', '102033', 'You must be the change you wish                   ', 'Andrew Nelson', 769.16, '2011-04-10', 1, 1);
INSERT INTO `book_info` VALUES (170, 'SNBN book', 'Kyle Gonzales', '海地', '104407', 'After logged in the Navicat Cloud                 ', 'Cui Xiuying', 168.74, '2020-10-22', 4, 0);
INSERT INTO `book_info` VALUES (171, 'JFCU book', 'Howard Fisher', '阿根廷', '102566', 'Creativity is intelligence having fun.            ', 'Nomura Takuya', 593.7, '2007-11-13', 3, 0);
INSERT INTO `book_info` VALUES (172, 'HSWA book', 'Melissa Freeman', '新西兰', '100241', 'Navicat is a multi-connections                    ', 'Melissa Jones', 323.1, '2014-06-14', 5, 1);
INSERT INTO `book_info` VALUES (173, 'VHWG book', 'Henry Cooper', '加纳', '107428', 'I may not have gone where I intended              ', 'Yeow On Kay', 986.17, '2010-01-23', 2, 0);
INSERT INTO `book_info` VALUES (174, 'VUKM book', 'Diane Mills', '委内瑞拉（玻利瓦尔共和国）', '106670', 'There is no way to happiness. Happiness           ', 'To Wai Man', 540.65, '2002-12-04', 2, 0);
INSERT INTO `book_info` VALUES (175, 'MMXL book', 'Lois Washington', '尼加拉瓜', '106732', 'If the Show objects under schema                  ', 'He Zhiyuan', 987.3, '2016-11-12', 2, 1);
INSERT INTO `book_info` VALUES (176, 'OVOF book', 'Andrea Kim', '瑙鲁', '106741', 'Import Wizard allows you to import                ', 'Yip Chieh Lun', 906.97, '2019-11-08', 3, 0);
INSERT INTO `book_info` VALUES (177, 'NXGW book', 'Jennifer Wilson', '刚果民主共和国', '108780', 'If the Show objects under schema                  ', 'Yu Yuning', 595.6, '2003-11-09', 2, 1);
INSERT INTO `book_info` VALUES (178, 'JSNZ book', 'Paula Johnson', '塞舌尔', '104084', 'A man is not old until regrets                    ', 'Wu Hui Mei', 452.73, '2016-04-30', 3, 1);
INSERT INTO `book_info` VALUES (179, 'HEYA book', 'Marcus Simmons', '南非', '106825', 'Sometimes you win, sometimes you learn.', 'Yu Lu', 514.91, '2007-03-01', 2, 1);
INSERT INTO `book_info` VALUES (180, 'TSLI book', 'Justin Washington', '哈萨克斯坦', '107502', 'After comparing data, the window                  ', 'Gerald Gibson', 277.37, '2009-09-20', 5, 1);
INSERT INTO `book_info` VALUES (181, 'PKDL book', 'Kathy Wagner', '印度', '106614', 'If the Show objects under schema                  ', 'Shi Jiehong', 361.29, '2000-12-14', 1, 0);
INSERT INTO `book_info` VALUES (182, 'PMHQ book', 'Ernest Turner', '卢旺达', '100307', 'It provides strong authentication                 ', 'Adam Stewart', 823.4, '2015-07-06', 4, 0);
INSERT INTO `book_info` VALUES (183, 'KNTQ book', 'Alfred Warren', '新西兰', '106269', 'Navicat Monitor requires a repository             ', 'Koon Lik Sun', 167, '2006-05-23', 1, 0);
INSERT INTO `book_info` VALUES (184, 'KXAP book', 'Matthew Price', '阿富汗', '102090', 'Navicat is a multi-connections                    ', 'Maruyama Airi', 2.08, '2003-06-11', 5, 1);
INSERT INTO `book_info` VALUES (185, 'MOSQ book', 'Wanda Stewart', '安哥拉', '106190', 'With its well-designed Graphical                  ', 'Jiang Zhiyuan', 22.47, '2008-03-10', 3, 0);
INSERT INTO `book_info` VALUES (186, 'UDDG book', 'Anne Evans', '白俄罗斯', '102699', 'If it scares you, it might be a good thing to try.', 'Tony Robinson', 319.46, '2018-02-22', 1, 1);
INSERT INTO `book_info` VALUES (187, 'SXGT book', 'Emma Schmidt', '大韩民国', '106976', 'Navicat Data Modeler is a powerful                ', 'Jesse Lee', 731.04, '2018-02-27', 3, 1);
INSERT INTO `book_info` VALUES (188, 'FEJJ book', 'Wendy Cole', '中国', '100115', 'It collects process metrics such                  ', 'Chad Thompson', 177.88, '2004-01-05', 4, 0);
INSERT INTO `book_info` VALUES (189, 'ITIN book', 'Marilyn Turner', '圣多美和普林西比', '108433', 'If you wait, all that happens is you get older.', 'Zhou Lan', 863.7, '2019-10-31', 4, 0);
INSERT INTO `book_info` VALUES (190, 'RHGX book', 'Ashley Freeman', '圣基茨和尼维斯', '105508', 'I will greet this day with love in my heart.      ', 'Wei Shihan', 755.57, '2022-02-15', 4, 1);
INSERT INTO `book_info` VALUES (191, 'TCPT book', 'Vincent Myers', '奈及利亚', '108859', 'All the Navicat Cloud objects are                 ', 'Xiang Xiuying', 127.55, '2000-12-30', 2, 1);
INSERT INTO `book_info` VALUES (192, 'KGGS book', 'Wendy Fox', '美国', '103577', 'Secure SHell (SSH) is a program                   ', 'Nakano Hina', 890.05, '2017-10-09', 5, 0);
INSERT INTO `book_info` VALUES (193, 'LQJA book', 'Roger Foster', '尼日尔', '101914', 'To start working with your server                 ', 'Ng Wai Yee', 220.26, '2007-08-12', 3, 1);
INSERT INTO `book_info` VALUES (194, 'VICM book', 'Linda Tucker', '贝宁', '109368', 'Navicat Data Modeler enables you                  ', 'Lau Wing Suen', 230.01, '2011-10-17', 1, 0);
INSERT INTO `book_info` VALUES (195, 'PEWD book', 'Kim Mills', '不丹', '102242', 'If the Show objects under schema                  ', 'Fan Xiaoming', 554.22, '2012-01-26', 2, 0);
INSERT INTO `book_info` VALUES (196, 'HKCY book', 'Stanley Holmes', '安提瓜和巴布达', '106067', 'Navicat is a multi-connections                    ', 'Carrie Black', 876.4, '2011-06-01', 5, 1);
INSERT INTO `book_info` VALUES (197, 'UHOE book', 'Albert Reynolds', '格林纳达', '102270', 'I will greet this day with love in my heart.', 'Anthony Payne', 982.82, '2021-11-07', 1, 0);
INSERT INTO `book_info` VALUES (198, 'OKLT book', 'Eleanor Ellis', '匈牙利', '101830', 'Navicat allows you to transfer                    ', 'Goto Kazuma', 276.26, '2002-12-13', 4, 1);
INSERT INTO `book_info` VALUES (199, 'BMBC book', 'Daniel Perez', '沙特阿拉伯', '103006', 'To connect to a database or schema,               ', 'Shi Rui', 334.59, '2020-11-12', 2, 1);
INSERT INTO `book_info` VALUES (200, 'FTRU book', 'Barbara Murphy', '玻利维亚', '109326', 'After logged in the Navicat Cloud                 ', 'Yoshida Eita', 79.9, '2016-08-22', 4, 1);
INSERT INTO `book_info` VALUES (201, 'XOKY book', 'Catherine Brown', '玻利维亚', '102100', 'A man is not old until regrets                    ', 'Saito Airi', 735.12, '2005-04-20', 4, 0);
INSERT INTO `book_info` VALUES (202, 'WSXW book', 'Anthony Davis', '阿富汗', '101004', 'HTTP Tunneling is a method for                    ', 'Tao Zhiyuan', 125.89, '2003-08-03', 5, 0);
INSERT INTO `book_info` VALUES (203, 'QBVB book', 'Gladys Davis', '科特迪瓦', '105601', 'Navicat Cloud provides a cloud                    ', 'Fujii Kenta', 839.94, '2001-09-05', 3, 1);
INSERT INTO `book_info` VALUES (204, 'VTFP book', 'Gloria Boyd', '阿富汗', '100235', 'A query is used to extract data                   ', 'Peng Zhiyuan', 202.01, '2013-04-25', 3, 0);
INSERT INTO `book_info` VALUES (205, 'FQNZ book', 'Bernard Jimenez', '塞尔维亚', '102770', 'It wasn’t raining when Noah built the ark.', 'Duan Jiehong', 479.02, '2016-09-09', 4, 1);
INSERT INTO `book_info` VALUES (206, 'JTSE book', 'Gregory Romero', '乌兹别克斯坦', '100497', 'Navicat provides powerful tools                   ', 'Paul Ortiz', 337.14, '2017-08-10', 4, 1);
INSERT INTO `book_info` VALUES (207, 'JDCS book', 'Sylvia Mendoza', '刚果', '103752', 'Champions keep playing until they get it right.', 'So Wing Suen', 62.45, '2005-08-24', 3, 1);
INSERT INTO `book_info` VALUES (208, 'LAMS book', 'Jean Phillips', '中非共和国', '106217', 'In the middle of winter I at last                 ', 'Fong Wai Lam', 482.81, '2020-02-24', 3, 0);
INSERT INTO `book_info` VALUES (209, 'KLAV book', 'Nicholas Jackson', '马绍尔群岛', '106422', 'SSH serves to prevent such vulnerabilities        ', 'Shibata Kenta', 320.54, '2000-05-30', 4, 1);
INSERT INTO `book_info` VALUES (210, 'NWQM book', 'Helen Hill', '美国', '105035', 'You will succeed because most people are lazy.', 'Harada Mitsuki', 520.5, '2001-03-24', 2, 0);
INSERT INTO `book_info` VALUES (211, 'VCDM book', 'Eric Moreno', '危地马拉', '105249', 'SQL Editor allows you to create                   ', 'Jane Reyes', 842.65, '2021-06-23', 2, 1);
INSERT INTO `book_info` VALUES (212, 'EBFK book', 'Irene Jenkins', '保加利亚', '102655', 'SQL Editor allows you to create                   ', 'Hasegawa Minato', 941.88, '2004-08-04', 1, 1);
INSERT INTO `book_info` VALUES (213, 'IONE book', 'Debra Green', '土耳其', '100608', 'Navicat Cloud provides a cloud                    ', 'Manuel Young', 381.66, '2020-12-22', 4, 1);
INSERT INTO `book_info` VALUES (214, 'BABW book', 'Diana Sullivan', '多哥', '108758', 'To open a query using an external                 ', 'Ma Wing Fat', 945.88, '2015-10-28', 3, 1);
INSERT INTO `book_info` VALUES (215, 'FMHX book', 'Teresa Robinson', '马来西亚', '103087', 'A comfort zone is a beautiful place,              ', 'Billy West', 705.6, '2004-06-13', 5, 1);
INSERT INTO `book_info` VALUES (216, 'NDQP book', 'Amanda Warren', '吉尔吉斯斯坦', '106743', 'Success consists of going from                    ', 'Shibata Ikki', 530.76, '2021-02-24', 3, 1);
INSERT INTO `book_info` VALUES (217, 'BXRR book', 'Emily Thomas', '阿尔巴尼亚', '109584', 'Genius is an infinite capacity for taking pains.', 'Gao Jiehong', 36.01, '2017-01-25', 4, 1);
INSERT INTO `book_info` VALUES (218, 'YYHO book', 'Miguel Hall', '立陶宛', '108716', 'The first step is as good as half over.', 'Nakamori Shino', 65.72, '2000-07-28', 2, 1);
INSERT INTO `book_info` VALUES (219, 'XEMQ book', 'Joe Long', '土耳其', '103683', 'You must be the change you wish                   ', 'Hui Wing Sze', 517.06, '2013-11-26', 3, 1);
INSERT INTO `book_info` VALUES (220, 'EWLT book', 'Shannon Allen', '中非共和国', '104160', 'Navicat 15 has added support for                  ', 'Diana Spencer', 145.88, '2012-11-30', 3, 1);
INSERT INTO `book_info` VALUES (221, 'MOXP book', 'Nathan Hill', '海地', '102373', 'Sometimes you win, sometimes you learn.', 'Liang Xiaoming', 360.73, '2019-04-30', 1, 1);
INSERT INTO `book_info` VALUES (222, 'DRDW book', 'Emily Peterson', '巴基斯坦', '100914', 'You will succeed because most people are lazy.', 'Sato Aoi', 980.98, '2013-07-28', 2, 1);
INSERT INTO `book_info` VALUES (223, 'DHPC book', 'Josephine Parker', '乌克兰', '107254', 'Navicat authorizes you to make                    ', 'Kono Minato', 989.3, '2001-08-29', 5, 1);
INSERT INTO `book_info` VALUES (224, 'UKZJ book', 'Amy Campbell', '厄瓜多尔', '109641', 'To connect to a database or schema,               ', 'Marjorie Gomez', 410.04, '2000-04-06', 1, 0);
INSERT INTO `book_info` VALUES (225, 'QAFW book', 'Ann Schmidt', '科特迪瓦', '109643', 'Navicat Monitor is a safe, simple                 ', 'Earl James', 240.71, '2014-10-13', 4, 1);
INSERT INTO `book_info` VALUES (226, 'SIBO book', 'Pamela West', '也门', '105580', 'In the middle of winter I at last                 ', 'George Mitchell', 755.28, '2015-04-05', 3, 1);
INSERT INTO `book_info` VALUES (227, 'UWOO book', 'Gloria Martin', '马拉维', '109579', 'A query is used to extract data                   ', 'Yamamoto Kazuma', 717.61, '2018-05-11', 4, 1);
INSERT INTO `book_info` VALUES (228, 'BWFS book', 'Gregory Long', '多哥', '106710', 'Navicat provides powerful tools                   ', 'Yoshida Yuto', 911.59, '2009-06-26', 3, 1);
INSERT INTO `book_info` VALUES (229, 'QVWP book', 'Sheila Young', '卡塔尔', '109619', 'You can select any connections,                   ', 'Watanabe Aoshi', 997.51, '2008-11-07', 3, 1);
INSERT INTO `book_info` VALUES (230, 'DVGU book', 'Bernard Hernandez', '菲律宾', '105979', 'Anyone who has never made a mistake               ', 'Yin On Kay', 122.38, '2001-11-09', 5, 1);
INSERT INTO `book_info` VALUES (231, 'RFRV book', 'Barbara Kelley', '牙买加', '104788', 'I may not have gone where I intended              ', 'Saito Momoe', 521.61, '2019-06-01', 2, 0);
INSERT INTO `book_info` VALUES (232, 'SDGT book', 'Sean Harris', '土耳其', '106739', 'Typically, it is employed as an                   ', 'Ng Chiu Wai', 777.64, '2018-06-19', 4, 1);
INSERT INTO `book_info` VALUES (233, 'FFUN book', 'Bernard Gutierrez', '洪都拉斯', '109771', 'Flexible settings enable you to                   ', 'Elaine Alvarez', 125.86, '2008-12-27', 3, 0);
INSERT INTO `book_info` VALUES (234, 'XKLP book', 'Anthony Moreno', '爱尔兰', '100015', 'Typically, it is employed as an                   ', 'Zhou Anqi', 615.83, '2015-01-06', 5, 1);
INSERT INTO `book_info` VALUES (235, 'ZAJB book', 'Barry Murray', '萨摩亚', '102293', 'The Navigation pane employs tree                  ', 'Theodore Evans', 656.38, '2004-12-15', 1, 0);
INSERT INTO `book_info` VALUES (236, 'CADW book', 'Stephen Fernandez', '埃塞俄比亚', '100904', 'The past has no power over the present moment.', 'Miura Mai', 765.48, '2001-10-23', 5, 0);
INSERT INTO `book_info` VALUES (237, 'SODG book', 'Peggy Mills', '瑙鲁', '104210', 'Champions keep playing until they get it right.', 'Ito Aoshi', 715.93, '2016-05-17', 2, 1);
INSERT INTO `book_info` VALUES (238, 'OKVJ book', 'Rodney Nelson', '拉脱维亚', '103636', 'You cannot save people, you can just love them.', 'Tang On Na', 801.2, '2020-01-18', 1, 0);
INSERT INTO `book_info` VALUES (239, 'PKAF book', 'Ryan Reynolds', '卡塔尔', '101511', 'Secure SHell (SSH) is a program                   ', 'Kong Lik Sun', 200.76, '2013-03-12', 2, 1);
INSERT INTO `book_info` VALUES (240, 'SFEK book', 'Jose Smith', '古巴', '103894', 'The reason why a great man is great               ', 'Lucille Griffin', 672.44, '2019-01-03', 5, 1);
INSERT INTO `book_info` VALUES (241, 'WRGM book', 'Robert Chavez', '克罗地亚', '108985', 'I will greet this day with love in my heart.      ', 'Lo Chieh Lun', 539.88, '2009-04-17', 1, 1);
INSERT INTO `book_info` VALUES (242, 'STVQ book', 'Jacqueline Cruz', '希腊', '104034', 'All journeys have secret destinations             ', 'Inoue Akina', 481.57, '2005-02-09', 5, 1);
INSERT INTO `book_info` VALUES (243, 'JCWV book', 'Angela Owens', '匈牙利', '106220', 'Sometimes you win, sometimes you learn.', 'Sugiyama Aoi', 526.61, '2014-08-11', 1, 1);
INSERT INTO `book_info` VALUES (244, 'JWEK book', 'Dennis Schmidt', '吉布地', '103989', 'The first step is as good as half over.', 'Anne Gonzalez', 359.84, '2018-10-27', 5, 0);
INSERT INTO `book_info` VALUES (245, 'TVTB book', 'Gary Roberts', '赞比亚', '100601', 'The Information Pane shows the                    ', 'Tang Chun Yu', 684.62, '2016-06-23', 1, 1);
INSERT INTO `book_info` VALUES (246, 'UFKJ book', 'Cynthia Alexander', '奈及利亚', '107970', 'The On Startup feature allows you                 ', 'Kwong Wing Fat', 823.49, '2003-06-12', 2, 1);
INSERT INTO `book_info` VALUES (247, 'RAZI book', 'Jane Owens', '黑山共和国', '109948', 'In the middle of winter I at last                 ', 'Okada Seiko', 5.29, '2004-09-02', 3, 0);
INSERT INTO `book_info` VALUES (248, 'YQXS book', 'Lori Gutierrez', '罗马尼亚', '107016', 'How we spend our days is, of course,              ', 'Lei Anqi', 786.41, '2008-08-11', 5, 0);
INSERT INTO `book_info` VALUES (249, 'WUFZ book', 'Harold Meyer', '菲律宾', '107045', 'To start working with your server                 ', 'Ye Anqi', 271.48, '2000-06-28', 4, 1);
INSERT INTO `book_info` VALUES (250, 'VVTO book', 'Rodney Henderson', '塞浦路斯', '100039', 'The first step is as good as half over.', 'He Xiuying', 544.6, '2012-08-29', 3, 1);
INSERT INTO `book_info` VALUES (251, 'KDLE book', 'Danielle Chavez', '土库曼斯坦', '102440', 'The reason why a great man is great               ', 'Yeow Sze Yu', 968.53, '2010-01-03', 3, 1);
INSERT INTO `book_info` VALUES (252, 'HFFW book', 'Ricky Vargas', '圣基茨和尼维斯', '104987', 'Instead of wondering when your                    ', 'Elaine Grant', 286.14, '2006-10-25', 1, 0);
INSERT INTO `book_info` VALUES (253, 'UKWJ book', 'Aaron Ramos', '厄瓜多尔', '102419', 'If your Internet Service Provider                 ', 'Cho Ka Ming', 114.8, '2008-07-22', 3, 0);
INSERT INTO `book_info` VALUES (254, 'XNJB book', 'Jimmy Schmidt', '牙买加', '104709', 'What you get by achieving your                    ', 'Hirano Hazuki', 641.97, '2009-01-25', 2, 1);
INSERT INTO `book_info` VALUES (255, 'OYLV book', 'Tina Ramos', '乌拉圭', '108657', 'Secure Sockets Layer(SSL) is a                    ', 'Lo Yun Fat', 140.52, '2019-12-11', 3, 0);
INSERT INTO `book_info` VALUES (256, 'DNGT book', 'Sandra Alvarez', '所罗门群岛', '104577', 'All journeys have secret destinations             ', 'Kudo Minato', 968.23, '2000-09-19', 5, 0);
INSERT INTO `book_info` VALUES (257, 'BRHQ book', 'David Clark', '东帝汶', '108631', 'After logged in the Navicat Cloud                 ', 'Lu Rui', 808.81, '2016-12-08', 1, 0);
INSERT INTO `book_info` VALUES (258, 'FDUH book', 'Bobby Rose', '朝鲜民主主义人民共和国', '102820', 'You cannot save people, you can just love them.', 'Fong Yu Ling', 973.8, '2020-07-02', 3, 0);
INSERT INTO `book_info` VALUES (259, 'JIGJ book', 'Nicholas Patterson', '也门', '101605', 'The repository database can be                    ', 'Matsumoto Daisuke', 154.86, '2000-03-19', 1, 1);
INSERT INTO `book_info` VALUES (260, 'KMDW book', 'Pauline Hall', '卡塔尔', '104748', 'Genius is an infinite capacity for taking pains.', 'David Rodriguez', 597.02, '2006-05-14', 2, 1);
INSERT INTO `book_info` VALUES (261, 'NWUL book', 'Pauline Hernandez', '圣马力诺', '108595', 'It provides strong authentication                 ', 'Mui Hiu Tung', 888.26, '2010-08-09', 3, 0);
INSERT INTO `book_info` VALUES (262, 'NWEN book', 'Tiffany Nichols', '意大利', '103745', 'The first step is as good as half over.', 'Tanaka Aoshi', 402.8, '2005-06-05', 3, 0);
INSERT INTO `book_info` VALUES (263, 'EUQC book', 'Ernest Bryant', '突尼斯', '104492', 'To start working with your server                 ', 'Jia Anqi', 915.07, '2010-06-04', 3, 0);
INSERT INTO `book_info` VALUES (264, 'OOFI book', 'Leroy Hunt', '阿塞拜疆', '107869', 'In other words, Navicat provides                  ', 'Hashimoto Yuito', 260.03, '2018-11-01', 4, 1);
INSERT INTO `book_info` VALUES (265, 'YRXE book', 'Barry Ortiz', '捷克共和国', '103918', 'Anyone who has never made a mistake               ', 'Shao Shihan', 529.08, '2019-04-08', 3, 1);
INSERT INTO `book_info` VALUES (266, 'IRGS book', 'Juanita Palmer', '土库曼斯坦', '104646', 'Difficult circumstances serve as                  ', 'Lu Jialun', 890.81, '2018-08-24', 2, 1);
INSERT INTO `book_info` VALUES (267, 'IQKB book', 'Kelly Sanders', '纳米比亚', '100974', 'Secure Sockets Layer(SSL) is a                    ', 'Rodney Payne', 83.54, '2005-01-02', 4, 1);
INSERT INTO `book_info` VALUES (268, 'MYDZ book', 'Anthony Alvarez', '塔吉克斯坦', '108522', 'Secure SHell (SSH) is a program                   ', 'Tian Xiaoming', 466.91, '2000-03-25', 3, 1);
INSERT INTO `book_info` VALUES (269, 'EGXN book', 'Karen Shaw', '加拿大', '101133', 'A man’s best friends are his ten fingers.', 'Yuan Zitao', 50.64, '2014-05-17', 1, 1);
INSERT INTO `book_info` VALUES (270, 'FCRI book', 'Eugene Sanders', '马尔代夫', '106890', 'Monitored servers include MySQL,                  ', 'Nomura Ikki', 86.05, '2013-11-03', 2, 1);
INSERT INTO `book_info` VALUES (271, 'OTTC book', 'Johnny Rose', '南非', '101870', 'If the plan doesn’t work, change                ', 'Jiang Xiaoming', 336.36, '2011-08-27', 3, 1);
INSERT INTO `book_info` VALUES (272, 'ZGNZ book', 'Roger Hamilton', '洪都拉斯', '104644', 'SSH serves to prevent such vulnerabilities        ', 'Liao Kwok Yin', 334.66, '2009-11-22', 4, 0);
INSERT INTO `book_info` VALUES (273, 'PQRO book', 'Eva Hayes', '刚果', '108111', 'Import Wizard allows you to import                ', 'Wada Aoshi', 20.38, '2018-07-11', 3, 0);
INSERT INTO `book_info` VALUES (274, 'OVQN book', 'Debbie Gutierrez', '也门', '104959', 'You will succeed because most people are lazy.', 'Chic Kwok Wing', 832.24, '2004-10-05', 4, 1);
INSERT INTO `book_info` VALUES (275, 'OJGL book', 'Sherry Rice', '阿曼', '104779', 'To get a secure connection, the                   ', 'Harada Daichi', 647.46, '2001-11-29', 5, 0);
INSERT INTO `book_info` VALUES (276, 'UBXQ book', 'Ellen Bryant', '西班牙', '109051', 'Navicat Monitor requires a repository             ', 'Shen Jiehong', 217.82, '2017-09-14', 3, 1);
INSERT INTO `book_info` VALUES (277, 'OXVH book', 'Lucille Cook', '乌兹别克斯坦', '100410', 'If opportunity doesn’t knock, build a door.', 'Bradley Mason', 774.39, '2014-03-19', 2, 1);
INSERT INTO `book_info` VALUES (278, 'VHOL book', 'Tracy Dixon', '萨摩亚', '101940', 'Instead of wondering when your                    ', 'Jiang Lu', 965.47, '2000-10-20', 4, 1);
INSERT INTO `book_info` VALUES (279, 'UQID book', 'Rhonda Ramos', '老挝人民民主共和国', '109649', 'You will succeed because most people are lazy.', 'Harada Yota', 28.71, '2020-05-18', 2, 0);
INSERT INTO `book_info` VALUES (280, 'XHCP book', 'Martha Lopez', '緬甸', '106197', 'In the middle of winter I at last                 ', 'Saito Aoshi', 393.83, '2013-02-25', 4, 1);
INSERT INTO `book_info` VALUES (281, 'OOQZ book', 'Bryan Russell', '圣基茨和尼维斯', '102028', 'SSH serves to prevent such vulnerabilities        ', 'Han Lan', 333.9, '2007-10-20', 4, 1);
INSERT INTO `book_info` VALUES (282, 'YFYH book', 'Thomas Owens', '巴哈马', '108929', 'All the Navicat Cloud objects are                 ', 'Sano Miu', 960.27, '2017-04-13', 4, 0);
INSERT INTO `book_info` VALUES (283, 'CISP book', 'Eleanor Hayes', '喀麦隆', '108375', 'Secure Sockets Layer(SSL) is a                    ', 'Koon Ling Ling', 650.05, '2008-11-14', 4, 0);
INSERT INTO `book_info` VALUES (284, 'TYHT book', 'Dale Smith', '贝宁', '109743', 'Navicat allows you to transfer                    ', 'Ando Seiko', 515.46, '2013-04-06', 4, 0);
INSERT INTO `book_info` VALUES (285, 'GIOH book', 'David Jordan', '津巴布韦', '100411', 'Actually it is just in an idea                    ', 'Yamamoto Shino', 621.49, '2013-08-24', 4, 0);
INSERT INTO `book_info` VALUES (286, 'WRWF book', 'Norman Griffin', '瓦努阿图', '105174', 'Sometimes you win, sometimes you learn.', 'Zhang Xiuying', 50.17, '2012-01-13', 3, 0);
INSERT INTO `book_info` VALUES (287, 'VYOB book', 'Peggy West', '加蓬', '107908', 'Sometimes you win, sometimes you learn.', 'Loui Siu Wai', 24.07, '2016-01-07', 2, 1);
INSERT INTO `book_info` VALUES (288, 'HWOO book', 'Sara Castillo', '罗马尼亚', '103231', 'If the Show objects under schema                  ', 'Roy Silva', 449.79, '2018-06-03', 4, 1);
INSERT INTO `book_info` VALUES (289, 'YEFM book', 'Manuel Garcia', '哈萨克斯坦', '108953', 'To successfully establish a new                   ', 'Kam Tak Wah', 572.77, '2009-12-15', 5, 1);
INSERT INTO `book_info` VALUES (290, 'BLPP book', 'Joe Hawkins', '印度', '101955', 'Success consists of going from                    ', 'Shao Jiehong', 634.59, '2000-02-05', 2, 0);
INSERT INTO `book_info` VALUES (291, 'UHIG book', 'Lee Reyes', '卢旺达', '101992', 'Navicat Monitor is a safe, simple                 ', 'Jin Jiehong', 55.29, '2011-12-12', 2, 0);
INSERT INTO `book_info` VALUES (292, 'JZEA book', 'Anita Ross', '塞舌尔', '102001', 'Sometimes you win, sometimes you learn.', 'Tong Ting Fung', 299.17, '2017-11-16', 2, 0);
INSERT INTO `book_info` VALUES (293, 'ILHO book', 'Scott Jackson', '塔吉克斯坦', '108987', 'Secure SHell (SSH) is a program                   ', 'Cao Jialun', 278.24, '2021-04-27', 3, 0);
INSERT INTO `book_info` VALUES (294, 'NOBT book', 'Benjamin Stephens', '波兰', '102694', 'Typically, it is employed as an                   ', 'To Hiu Tung', 476.62, '2016-02-09', 2, 1);
INSERT INTO `book_info` VALUES (295, 'GYTR book', 'Herbert Hunter', '安道尔', '105603', 'How we spend our days is, of course,              ', 'Takeuchi Ryota', 759.3, '2021-01-16', 3, 0);
INSERT INTO `book_info` VALUES (296, 'FIFY book', 'Edward Gordon', '伊拉克', '108938', 'It collects process metrics such                  ', 'Kimura Kasumi', 430.22, '2021-12-21', 3, 1);
INSERT INTO `book_info` VALUES (297, 'NCEF book', 'Teresa Ross', '斯里兰卡', '100688', 'Navicat provides powerful tools                   ', 'Anita Olson', 507.77, '2005-08-25', 2, 0);
INSERT INTO `book_info` VALUES (298, 'SZTD book', 'Kelly Schmidt', '加蓬', '106202', 'HTTP Tunneling is a method for                    ', 'Eddie Gray', 767.41, '2004-09-20', 1, 0);
INSERT INTO `book_info` VALUES (299, 'RVPO book', 'Bradley Ross', '马里', '105709', 'A query is used to extract data                   ', 'Hu Shihan', 28.19, '2002-10-27', 3, 0);
INSERT INTO `book_info` VALUES (300, 'BFVQ book', 'Jacqueline Robinson', '法国', '107647', 'Import Wizard allows you to import                ', 'Tang Xiuying', 46.15, '2021-11-11', 5, 0);
INSERT INTO `book_info` VALUES (301, 'HVFV book', 'Raymond Jimenez', '波斯尼亚和黑塞哥维那', '105305', 'Anyone who has never made a mistake               ', 'Hu Anqi', 911.77, '2016-04-23', 4, 1);
INSERT INTO `book_info` VALUES (302, 'OIWS book', 'Bruce Carter', '哥斯达黎加', '107303', 'Import Wizard allows you to import                ', 'Sato Tsubasa', 874.78, '2014-06-14', 3, 0);
INSERT INTO `book_info` VALUES (303, 'SOCR book', 'Melvin Herrera', '埃塞俄比亚', '107275', 'It collects process metrics such                  ', 'Han Yu Ling', 9.06, '2011-02-14', 3, 0);
INSERT INTO `book_info` VALUES (304, 'YOYP book', 'Jack Romero', '阿尔及利亚', '106482', 'Remember that failure is an event, not a person.', 'Jerry Ford', 526.96, '2017-04-07', 2, 0);
INSERT INTO `book_info` VALUES (305, 'GLUD book', 'Louise Kelley', '约旦', '104409', 'I will greet this day with love in my heart.', 'Cai Lu', 390.36, '2015-10-07', 1, 1);
INSERT INTO `book_info` VALUES (306, 'PMBQ book', 'Rose Cooper', '意大利', '101843', 'SSH serves to prevent such vulnerabilities        ', 'He Zhiyuan', 527.69, '2000-08-03', 4, 1);
INSERT INTO `book_info` VALUES (307, 'TXND book', 'Carl Richardson', '利比里亚', '106653', 'A comfort zone is a beautiful place,              ', 'Nathan Richardson', 402.67, '2021-09-16', 2, 0);
INSERT INTO `book_info` VALUES (308, 'EDHQ book', 'Virginia Powell', '伯利兹', '106270', 'It collects process metrics such                  ', 'Long Zhennan', 351.78, '2014-05-18', 1, 1);
INSERT INTO `book_info` VALUES (309, 'EUWH book', 'Francisco Allen', '马拉维', '103919', 'It provides strong authentication                 ', 'Eugene Ferguson', 187.17, '2013-03-24', 2, 1);
INSERT INTO `book_info` VALUES (310, 'OLXV book', 'Kelly Gordon', '孟加拉国', '101168', 'Always keep your eyes open. Keep                  ', 'Abe Momoka', 17.62, '2012-04-24', 2, 0);
INSERT INTO `book_info` VALUES (311, 'OHRN book', 'Jacob Salazar', '南非', '105525', 'Secure SHell (SSH) is a program                   ', 'Pak Chun Yu', 113.79, '2010-08-11', 4, 0);
INSERT INTO `book_info` VALUES (312, 'XEXV book', 'Judith Dunn', '乌兹别克斯坦', '107576', 'If the plan doesn’t work, change                ', 'Yu Zhiyuan', 363.72, '2007-04-24', 2, 0);
INSERT INTO `book_info` VALUES (313, 'PCEX book', 'Cindy Perry', '荷兰', '102549', 'Remember that failure is an event, not a person.', 'Song Ziyi', 911.86, '2012-04-30', 2, 1);
INSERT INTO `book_info` VALUES (314, 'KHUM book', 'Sharon Woods', '斯里兰卡', '104270', 'Navicat authorizes you to make                    ', 'Dorothy Patel', 677.81, '2012-03-24', 4, 1);
INSERT INTO `book_info` VALUES (315, 'CXGB book', 'Steve Fernandez', '新西兰', '100775', 'If it scares you, it might be a good thing to try.', 'Yao Yuning', 927.09, '2006-05-17', 2, 0);
INSERT INTO `book_info` VALUES (316, 'CLYQ book', 'Bruce Daniels', '希腊', '100278', 'Flexible settings enable you to                   ', 'Yu Xiaoming', 721.9, '2021-02-28', 5, 0);
INSERT INTO `book_info` VALUES (317, 'BPZR book', 'Shannon Garcia', '阿拉伯叙利亚共和国', '104080', 'Navicat Cloud could not connect                   ', 'Cindy Webb', 476.83, '2018-10-28', 3, 1);
INSERT INTO `book_info` VALUES (318, 'DYGO book', 'Curtis Simmons', '巴基斯坦', '103250', 'If the plan doesn’t work, change                ', 'Roger Ramirez', 90.93, '2012-01-19', 1, 0);
INSERT INTO `book_info` VALUES (319, 'NHFM book', 'Tracy Crawford', '孟加拉国', '102957', 'After logged in the Navicat Cloud                 ', 'Hu Lan', 862.23, '2021-01-06', 4, 1);
INSERT INTO `book_info` VALUES (320, 'GGPV book', 'Valerie Reyes', '多哥', '109443', 'HTTP Tunneling is a method for                    ', 'Dale Evans', 515.39, '2019-12-15', 3, 0);
INSERT INTO `book_info` VALUES (321, 'XCFZ book', 'Esther Stone', '老挝人民民主共和国', '104187', 'What you get by achieving your                    ', 'Rose Taylor', 96.57, '2000-08-18', 2, 1);
INSERT INTO `book_info` VALUES (322, 'JJCD book', 'Julie Mitchell', '阿拉伯联合酋长国', '107749', 'Navicat Data Modeler enables you                  ', 'Shing Wai Man', 695.61, '2010-12-06', 2, 0);
INSERT INTO `book_info` VALUES (323, 'DVDP book', 'Juanita Munoz', '斐济', '101688', 'Navicat Monitor requires a repository             ', 'Koo Lai Yan', 499.24, '2017-05-14', 4, 0);
INSERT INTO `book_info` VALUES (324, 'DXXT book', 'Danny Flores', '爱沙尼亚', '100742', 'It provides strong authentication                 ', 'Ng Chung Yin', 115.93, '2002-09-16', 4, 1);
INSERT INTO `book_info` VALUES (325, 'LVBF book', 'Sarah Murray', '法国', '107128', 'Monitored servers include MySQL,                  ', 'Amy Stephens', 873.15, '2017-05-14', 2, 0);
INSERT INTO `book_info` VALUES (326, 'KXKB book', 'Joshua Ramirez', '萨摩亚', '102393', 'SQL Editor allows you to create                   ', 'Nishimura Seiko', 203.13, '2011-12-10', 2, 0);
INSERT INTO `book_info` VALUES (327, 'AGAL book', 'Jacqueline Mills', '密克罗尼西亚（联邦国）', '109826', 'SSH serves to prevent such vulnerabilities        ', 'Shibata Eita', 207.93, '2002-09-18', 2, 1);
INSERT INTO `book_info` VALUES (328, 'HTFZ book', 'Sarah Howard', '刚果民主共和国', '102751', 'Secure Sockets Layer(SSL) is a                    ', 'Heather Collins', 698.12, '2015-12-09', 2, 1);
INSERT INTO `book_info` VALUES (329, 'OEOF book', 'Eugene Sanders', '阿尔及利亚', '103113', 'There is no way to happiness. Happiness           ', 'Hasegawa Daisuke', 636.96, '2010-05-27', 5, 1);
INSERT INTO `book_info` VALUES (330, 'PBHF book', 'Jeffrey Ramos', '洪都拉斯', '102517', 'Navicat Data Modeler enables you                  ', 'Tsang Ming Sze', 218.31, '2018-01-17', 4, 0);
INSERT INTO `book_info` VALUES (331, 'EEXR book', 'Juanita Bell', '斯里兰卡', '107810', 'Navicat allows you to transfer                    ', 'Hui Chi Ming', 797.59, '2010-06-01', 3, 0);
INSERT INTO `book_info` VALUES (332, 'HVHG book', 'Marjorie Edwards', '以色列', '108307', 'In a Telnet session, all communications,          ', 'Ethel Shaw', 425.16, '2013-01-24', 4, 0);
INSERT INTO `book_info` VALUES (333, 'YYMW book', 'Chris Snyder', '苏里南', '100752', 'Export Wizard allows you to export                ', 'Miyamoto Minato', 225.99, '2016-12-25', 4, 0);
INSERT INTO `book_info` VALUES (334, 'CDAX book', 'Arthur West', '菲律宾', '106160', 'SSH serves to prevent such vulnerabilities        ', 'Chu Ming Sze', 94.58, '2005-11-22', 3, 1);
INSERT INTO `book_info` VALUES (335, 'VMHD book', 'Gregory Phillips', '文莱达鲁萨兰国', '105958', 'The On Startup feature allows you                 ', 'Lu Yuning', 232.6, '2002-02-28', 5, 1);
INSERT INTO `book_info` VALUES (336, 'ZPVK book', 'Patrick Owens', '塔吉克斯坦', '102702', 'Anyone who has ever made anything                 ', 'Ng On Na', 531.32, '2008-04-14', 1, 1);
INSERT INTO `book_info` VALUES (337, 'VIXA book', 'Jeffery Medina', '蒙古', '100185', 'After comparing data, the window                  ', 'Yung Kar Yan', 551.29, '2008-09-11', 2, 1);
INSERT INTO `book_info` VALUES (338, 'RENE book', 'Jessica Rodriguez', '圣文森特和格林纳丁斯', '103152', 'It collects process metrics such                  ', 'Tsang Suk Yee', 889.74, '2017-08-06', 4, 1);
INSERT INTO `book_info` VALUES (339, 'NBKT book', 'Brandon Payne', '突尼斯', '108704', 'Navicat allows you to transfer                    ', 'Qian Zhennan', 789.55, '2002-03-18', 3, 0);
INSERT INTO `book_info` VALUES (340, 'IGDP book', 'Nathan Foster', '土耳其', '102040', 'In the middle of winter I at last                 ', 'Koyama Airi', 286.79, '2016-06-14', 4, 1);
INSERT INTO `book_info` VALUES (341, 'YYON book', 'David Olson', '加纳', '107860', 'It is used while your ISPs do not                 ', 'Yamashita Akina', 987.76, '2000-03-10', 2, 0);
INSERT INTO `book_info` VALUES (342, 'YKMH book', 'Esther Anderson', '佛得角', '101901', 'HTTP Tunneling is a method for                    ', 'Sano Aoshi', 873.26, '2007-04-22', 4, 1);
INSERT INTO `book_info` VALUES (343, 'UMOQ book', 'Todd Hawkins', '伊朗（伊斯兰共和国）', '108332', 'The first step is as good as half over.', 'Fujiwara Sakura', 494.47, '2019-05-04', 3, 1);
INSERT INTO `book_info` VALUES (344, 'VCSG book', 'Gerald King', '古巴', '103338', 'It is used while your ISPs do not                 ', 'Ku Sze Yu', 897.11, '2017-11-09', 5, 1);
INSERT INTO `book_info` VALUES (345, 'EOZO book', 'Debra Hall', '巴西', '104362', 'In a Telnet session, all communications,          ', 'Okamoto Kazuma', 410.48, '2008-03-04', 4, 0);
INSERT INTO `book_info` VALUES (346, 'NNYC book', 'Clara Ward', '白俄罗斯', '100667', 'The first step is as good as half over.', 'Sakai Momoe', 930.68, '2005-02-09', 3, 1);
INSERT INTO `book_info` VALUES (347, 'EMUJ book', 'Ashley Ford', '肯尼亚', '100418', 'Secure Sockets Layer(SSL) is a                    ', 'Endo Yamato', 525.4, '2017-09-24', 2, 1);
INSERT INTO `book_info` VALUES (348, 'URUH book', 'Justin Mcdonald', '巴哈马', '108156', 'Navicat Cloud provides a cloud                    ', 'Tamura Tsubasa', 517.74, '2020-08-07', 2, 0);
INSERT INTO `book_info` VALUES (349, 'PFYO book', 'Sylvia Daniels', '马耳他', '101562', 'To successfully establish a new                   ', 'Betty Mitchell', 834.25, '2008-07-31', 5, 0);
INSERT INTO `book_info` VALUES (350, 'IJFV book', 'Jeffery Murray', '塞舌尔', '101027', 'How we spend our days is, of course,              ', 'Tsui Tin Lok', 335.88, '2005-02-24', 4, 0);
INSERT INTO `book_info` VALUES (351, 'DCKC book', 'Nicholas Parker', '圣露西亚', '107501', 'What you get by achieving your                    ', 'Lai Chieh Lun', 859.34, '2020-08-03', 5, 0);
INSERT INTO `book_info` VALUES (352, 'VJFK book', 'Joshua Murphy', '安哥拉', '109111', 'I will greet this day with love in my heart.', 'Shibata Shino', 871.22, '2013-10-19', 4, 0);
INSERT INTO `book_info` VALUES (353, 'ERVZ book', 'Curtis Henry', '孟加拉国', '107454', 'A man’s best friends are his ten fingers.', 'Wei Xiaoming', 901.86, '2009-03-25', 2, 0);
INSERT INTO `book_info` VALUES (354, 'WSOP book', 'Antonio Simmons', '古巴', '106505', 'Import Wizard allows you to import                ', 'Xiang Rui', 154.26, '2016-11-02', 5, 1);
INSERT INTO `book_info` VALUES (355, 'WGLI book', 'Vincent Scott', '吉布地', '101169', 'The Synchronize to Database function              ', 'Feng Rui', 872.5, '2014-09-10', 2, 0);
INSERT INTO `book_info` VALUES (356, 'BRZA book', 'Kimberly Murray', '南非', '103364', 'Import Wizard allows you to import                ', 'Mo Cho Yee', 477.28, '2002-08-26', 2, 0);
INSERT INTO `book_info` VALUES (357, 'LDQG book', 'James James', '苏里南', '100955', 'After comparing data, the window                  ', 'Kikuchi Tsubasa', 284.51, '2002-09-28', 2, 0);
INSERT INTO `book_info` VALUES (358, 'DSQU book', 'Hazel Guzman', '厄瓜多尔', '105742', 'Navicat Monitor is a safe, simple                 ', 'Jiang Lan', 810.88, '2000-09-29', 3, 0);
INSERT INTO `book_info` VALUES (359, 'CKSD book', 'Gary Reyes', '圣马力诺', '104496', 'To successfully establish a new                   ', 'Anthony Olson', 114.17, '2019-02-07', 2, 0);
INSERT INTO `book_info` VALUES (360, 'LYWQ book', 'Janice Marshall', '埃斯瓦蒂尼', '101838', 'Navicat Monitor can be installed                  ', 'Yamamoto Mio', 739.35, '2011-02-05', 3, 1);
INSERT INTO `book_info` VALUES (361, 'TTWP book', 'Johnny Munoz', '伊朗（伊斯兰共和国）', '103003', 'Navicat allows you to transfer                    ', 'Wang Rui', 769.79, '2003-04-16', 2, 0);
INSERT INTO `book_info` VALUES (362, 'ZFKU book', 'Thomas Ford', '印度', '101183', 'If you wait, all that happens is you get older.', 'Siu Chiu Wai', 802.7, '2017-02-05', 5, 0);
INSERT INTO `book_info` VALUES (363, 'BTKA book', 'Bradley Daniels', '巴拉圭', '107221', 'Navicat Data Modeler is a powerful                ', 'Yan Zitao', 387.58, '2002-10-11', 4, 1);
INSERT INTO `book_info` VALUES (364, 'BVDE book', 'Nicholas Garcia', '特立尼达和多巴哥', '108794', 'Import Wizard allows you to import                ', 'Wada Hikaru', 172.51, '2015-12-18', 4, 1);
INSERT INTO `book_info` VALUES (365, 'LULS book', 'Jamie Holmes', '马来西亚', '109378', 'SSH serves to prevent such vulnerabilities        ', 'Alan Guzman', 297.33, '2001-02-28', 3, 0);
INSERT INTO `book_info` VALUES (366, 'XDTQ book', 'Alice Long', '索马里', '107186', 'Typically, it is employed as an                   ', 'Sato Shino', 38.52, '2006-05-16', 4, 0);
INSERT INTO `book_info` VALUES (367, 'DXHW book', 'Ruby Johnson', '南非', '100279', 'Navicat authorizes you to make                    ', 'Cai Rui', 499.79, '2003-07-13', 3, 1);
INSERT INTO `book_info` VALUES (368, 'KZZH book', 'Pamela Garcia', '罗马尼亚', '106815', 'It wasn’t raining when Noah built the ark.', 'Miyazaki Momoka', 126.88, '2018-09-26', 1, 1);
INSERT INTO `book_info` VALUES (369, 'JXLB book', 'Gloria Tran', '佐治亚州', '105681', 'Navicat Cloud could not connect                   ', 'Miyazaki Mio', 606.84, '2010-07-18', 3, 1);
INSERT INTO `book_info` VALUES (370, 'XUVU book', 'Jose Alvarez', '斯洛伐克', '105527', 'Difficult circumstances serve as                  ', 'Zhang Shihan', 341.64, '2005-03-13', 2, 0);
INSERT INTO `book_info` VALUES (371, 'SHLE book', 'Shawn Edwards', '特立尼达和多巴哥', '108920', 'What you get by achieving your                    ', 'Ruth Collins', 639.23, '2018-08-13', 3, 1);
INSERT INTO `book_info` VALUES (372, 'VXVI book', 'Elizabeth Cruz', '马达加斯加', '102754', 'It can also manage cloud databases                ', 'Morita Daichi', 387.82, '2001-05-11', 3, 0);
INSERT INTO `book_info` VALUES (373, 'SATJ book', 'Joseph Morris', '马里', '102014', 'Navicat Monitor requires a repository             ', 'Arthur Reyes', 88.79, '2016-08-23', 4, 1);
INSERT INTO `book_info` VALUES (374, 'HNZK book', 'Crystal Porter', '黎巴嫩', '106206', 'A man is not old until regrets                    ', 'Matsuda Rin', 32.63, '2020-06-18', 4, 1);
INSERT INTO `book_info` VALUES (375, 'JZFD book', 'Patricia Robertson', '肯尼亚', '101755', 'Navicat Data Modeler is a powerful                ', 'Hui Chi Yuen', 925.32, '2017-10-13', 3, 0);
INSERT INTO `book_info` VALUES (376, 'XCTV book', 'Cynthia Ferguson', '肯尼亚', '104704', 'You will succeed because most people are lazy.', 'Ishida Minato', 786.09, '2007-12-14', 2, 0);
INSERT INTO `book_info` VALUES (377, 'MPUR book', 'Carl Chavez', '芬兰', '105247', 'Navicat provides powerful tools                   ', 'Jane Cruz', 979.61, '2002-12-05', 2, 1);
INSERT INTO `book_info` VALUES (378, 'NSCM book', 'Justin Smith', '刚果民主共和国', '101158', 'HTTP Tunneling is a method for                    ', 'Han Sau Man', 610.92, '2017-05-28', 1, 1);
INSERT INTO `book_info` VALUES (379, 'ZCWU book', 'Kenneth White', '墨西哥', '106271', 'It is used while your ISPs do not                 ', 'Walter Perez', 402.31, '2013-03-10', 3, 0);
INSERT INTO `book_info` VALUES (380, 'ZLZF book', 'Roy Sullivan', '阿拉伯联合酋长国', '101099', 'How we spend our days is, of course,              ', 'Russell Bell', 221.38, '2012-04-17', 4, 1);
INSERT INTO `book_info` VALUES (381, 'EHDR book', 'Ruby James', '多哥', '106498', 'Such sessions are also susceptible                ', 'Edwin Ramirez', 336.62, '2000-10-19', 4, 1);
INSERT INTO `book_info` VALUES (382, 'TWZX book', 'Katherine Snyder', '赤道几内亚', '105874', 'Import Wizard allows you to import                ', 'Yin Ka Ling', 309.77, '2003-01-08', 4, 0);
INSERT INTO `book_info` VALUES (383, 'WUVO book', 'Edith Grant', '所罗门群岛', '107005', 'The Information Pane shows the                    ', 'Wong Ho Yin', 863.27, '2013-12-25', 4, 1);
INSERT INTO `book_info` VALUES (384, 'TILO book', 'Troy Robinson', '不丹', '102140', 'You cannot save people, you can just love them.', 'Dai Shihan', 920.31, '2009-09-16', 4, 1);
INSERT INTO `book_info` VALUES (385, 'OQFU book', 'Paul Kelley', '巴拿马', '100998', 'The Navigation pane employs tree                  ', 'Du Zhennan', 107.25, '2012-03-08', 4, 1);
INSERT INTO `book_info` VALUES (386, 'DBNQ book', 'Nancy Simmons', '图瓦卢', '101249', 'After logged in the Navicat Cloud                 ', 'Chan Hui Mei', 770.55, '2005-06-06', 2, 1);
INSERT INTO `book_info` VALUES (387, 'VBNW book', 'Sandra Rogers', '特立尼达和多巴哥', '101848', 'To open a query using an external                 ', 'Yan Xiuying', 505.51, '2020-10-05', 5, 1);
INSERT INTO `book_info` VALUES (388, 'BGDP book', 'Denise West', '大韩民国', '105533', 'Instead of wondering when your                    ', 'Koyama Itsuki', 864.32, '2010-07-25', 2, 1);
INSERT INTO `book_info` VALUES (389, 'FJQV book', 'Martin Mitchell', '黑山共和国', '106004', 'You will succeed because most people are lazy.', 'Aaron Stone', 152.05, '2001-01-01', 2, 0);
INSERT INTO `book_info` VALUES (390, 'ONTC book', 'Lori Holmes', '土库曼斯坦', '107129', 'It collects process metrics such                  ', 'Michelle Patterson', 966.39, '2013-07-10', 3, 0);
INSERT INTO `book_info` VALUES (391, 'TBDQ book', 'Margaret Flores', '丹麦', '102330', 'The Main Window consists of several               ', 'Yin On Kay', 844.82, '2016-04-19', 2, 0);
INSERT INTO `book_info` VALUES (392, 'YDCZ book', 'Josephine King', '贝宁', '106072', 'Genius is an infinite capacity for taking pains.', 'Connie Garza', 828.92, '2002-12-18', 4, 0);
INSERT INTO `book_info` VALUES (393, 'MPVA book', 'Alfred Collins', '塞舌尔', '100627', 'After comparing data, the window                  ', 'Kwan Wai Man', 422.09, '2004-11-17', 2, 1);
INSERT INTO `book_info` VALUES (394, 'QCMH book', 'Barbara Hughes', '冈比亚', '100030', 'You can select any connections,                   ', 'Matsumoto Ayano', 554.77, '2020-05-30', 3, 0);
INSERT INTO `book_info` VALUES (395, 'BRWU book', 'Victor Castro', '多米尼加', '107009', 'I will greet this day with love in my heart.', 'Ishii Momoe', 45.3, '2001-04-19', 5, 1);
INSERT INTO `book_info` VALUES (396, 'MYIF book', 'Amy Holmes', '瑙鲁', '105349', 'You cannot save people, you can just love them.', 'Danny Henry', 404.44, '2006-02-26', 5, 1);
INSERT INTO `book_info` VALUES (397, 'DQDG book', 'Joyce Mills', '阿曼', '102339', 'It can also manage cloud databases                ', 'Choi Tin Wing', 103.81, '2009-11-13', 2, 1);
INSERT INTO `book_info` VALUES (398, 'QNDW book', 'Gloria Cox', '苏丹', '103621', 'Secure SHell (SSH) is a program                   ', 'Watanabe Ayano', 325.94, '2020-10-12', 3, 1);
INSERT INTO `book_info` VALUES (399, 'OQBW book', 'Diana Boyd', '芬兰', '106965', 'Such sessions are also susceptible                ', 'Kimberly Bailey', 94.04, '2018-07-31', 2, 0);
INSERT INTO `book_info` VALUES (400, 'NWJZ book', 'Rodney Stephens', '利比亚', '105264', 'In other words, Navicat provides                  ', 'Ma Wai San', 869.22, '2011-07-19', 1, 0);
INSERT INTO `book_info` VALUES (401, 'TQWC book', 'Danny Peterson', '卢旺达', '104082', 'Instead of wondering when your                    ', 'Takeda Airi', 214.1, '2008-04-27', 4, 0);
INSERT INTO `book_info` VALUES (402, 'JCXX book', 'Raymond James', '巴基斯坦', '109516', 'Instead of wondering when your                    ', 'Mok Ka Ming', 656.98, '2020-12-25', 2, 0);
INSERT INTO `book_info` VALUES (403, 'DKXR book', 'Stephanie Reyes', '纳米比亚', '106186', 'Actually it is just in an idea                    ', 'He Jiehong', 355.8, '2011-12-15', 1, 0);
INSERT INTO `book_info` VALUES (404, 'YJHB book', 'Melvin Weaver', '文莱达鲁萨兰国', '105551', 'The past has no power over the present moment.', 'Jia Anqi', 158.37, '2009-02-11', 1, 1);
INSERT INTO `book_info` VALUES (405, 'IIOM book', 'Dennis Meyer', '芬兰', '100757', 'To get a secure connection, the                   ', 'Beverly Torres', 916.7, '2018-06-02', 2, 1);
INSERT INTO `book_info` VALUES (406, 'LGFJ book', 'Judith Sanchez', '希腊', '104385', 'All the Navicat Cloud objects are                 ', 'Okada Daisuke', 34.24, '2008-08-18', 3, 0);
INSERT INTO `book_info` VALUES (407, 'NWMO book', 'Leonard Wood', '东帝汶', '100802', 'Secure Sockets Layer(SSL) is a                    ', 'Sugiyama Shino', 324.52, '2011-11-23', 4, 1);
INSERT INTO `book_info` VALUES (408, 'EOXP book', 'Justin Moore', '白俄罗斯', '105618', 'Typically, it is employed as an                   ', 'Long Jiehong', 998.74, '2013-06-13', 5, 0);
INSERT INTO `book_info` VALUES (409, 'QOOR book', 'Victor Ramos', '苏里南', '101431', 'There is no way to happiness. Happiness           ', 'Zhao Ziyi', 30.72, '2015-09-22', 3, 1);
INSERT INTO `book_info` VALUES (410, 'KXDS book', 'Melissa Castillo', '尼泊尔', '109293', 'I will greet this day with love in my heart.', 'Takahashi Kazuma', 959.88, '2004-02-09', 3, 0);
INSERT INTO `book_info` VALUES (411, 'FSDO book', 'John Gibson', '埃及', '109608', 'You cannot save people, you can just love them.', 'Xie Zitao', 474.95, '2005-08-06', 3, 0);
INSERT INTO `book_info` VALUES (412, 'HGIE book', 'David Ramos', '古巴', '105501', 'The past has no power over the present moment.', 'Phillip Jackson', 638.78, '2020-07-11', 1, 1);
INSERT INTO `book_info` VALUES (413, 'DEEY book', 'Bruce Marshall', '利比亚', '100406', 'Navicat Data Modeler enables you                  ', 'Ueno Kazuma', 64.41, '2017-01-05', 4, 1);
INSERT INTO `book_info` VALUES (414, 'FWTE book', 'Tony Carter', '塞尔维亚', '102059', 'If the Show objects under schema                  ', 'Deng Lu', 773.94, '2000-09-28', 2, 0);
INSERT INTO `book_info` VALUES (415, 'VSMS book', 'Kyle Mills', '瑞典', '109147', 'Navicat Monitor can be installed                  ', 'Nakamori Ayato', 906.77, '2001-04-09', 1, 1);
INSERT INTO `book_info` VALUES (416, 'VKEE book', 'Peter Alexander', '科威特', '101324', 'Navicat Data Modeler is a powerful                ', 'Fong Hui Mei', 867.89, '2010-03-05', 3, 0);
INSERT INTO `book_info` VALUES (417, 'GINT book', 'Judith Garcia', '巴布亚新几内亚', '107700', 'In the Objects tab, you can use                   ', 'Roger Williams', 180.78, '2006-02-23', 4, 1);
INSERT INTO `book_info` VALUES (418, 'VAAR book', 'Angela Ortiz', '希腊', '102169', 'If your Internet Service Provider                 ', 'Yeow Chi Ming', 702.27, '2018-11-25', 2, 0);
INSERT INTO `book_info` VALUES (419, 'JVRP book', 'Norman Simpson', '埃及', '106301', 'Navicat Monitor is a safe, simple                 ', 'Lau Hui Mei', 553.02, '2013-07-22', 3, 1);
INSERT INTO `book_info` VALUES (420, 'OVHL book', 'Norma Castillo', '美国', '105773', 'With its well-designed Graphical                  ', 'Yuen Lai Yan', 499.65, '2014-02-07', 2, 0);
INSERT INTO `book_info` VALUES (421, 'GULA book', 'Ricky Simmons', '不丹', '106992', 'Monitored servers include MySQL,                  ', 'Hou Shihan', 478.21, '2006-01-08', 3, 1);
INSERT INTO `book_info` VALUES (422, 'ULWZ book', 'Gladys Gordon', '塞内加尔', '109405', 'Navicat authorizes you to make                    ', 'Heather Lewis', 636.56, '2009-08-20', 4, 0);
INSERT INTO `book_info` VALUES (423, 'DIJT book', 'Sheila Davis', '巴布亚新几内亚', '103021', 'Always keep your eyes open. Keep                  ', 'Fan Xiuying', 183.75, '2018-11-09', 3, 1);
INSERT INTO `book_info` VALUES (424, 'CJWN book', 'Connie Hawkins', '科特迪瓦', '104625', 'It provides strong authentication                 ', 'Dawn West', 775.31, '2011-02-09', 1, 1);
INSERT INTO `book_info` VALUES (425, 'SWVJ book', 'Betty Nguyen', '卢森堡', '101016', 'I will greet this day with love in my heart.', 'Carlos Fox', 956.02, '2010-02-21', 2, 0);
INSERT INTO `book_info` VALUES (426, 'IBEJ book', 'Cynthia Hunt', '塞浦路斯', '103206', 'Optimism is the one quality more                  ', 'Tang Rui', 60.17, '2007-04-11', 5, 1);
INSERT INTO `book_info` VALUES (427, 'TJBE book', 'Sarah Hawkins', '希腊', '106071', 'A query is used to extract data                   ', 'Wu Lu', 919.15, '2009-01-19', 3, 1);
INSERT INTO `book_info` VALUES (428, 'ZTQM book', 'Daniel Webb', '索马里', '100677', 'You must be the change you wish                   ', 'Zhu Zitao', 1.98, '2015-10-23', 4, 0);
INSERT INTO `book_info` VALUES (429, 'BBWX book', 'Jamie Bryant', '巴布亚新几内亚', '102390', 'If opportunity doesn’t knock, build a door.', 'Xiong Rui', 425.92, '2013-04-26', 4, 1);
INSERT INTO `book_info` VALUES (430, 'ETXE book', 'Lois Ramirez', '吉布地', '101986', 'Navicat provides powerful tools                   ', 'Yang Zitao', 672.01, '2004-03-04', 5, 0);
INSERT INTO `book_info` VALUES (431, 'OLFW book', 'Irene Peterson', '吉布地', '101308', 'To get a secure connection, the                   ', 'Nishimura Itsuki', 518.25, '2016-12-03', 4, 1);
INSERT INTO `book_info` VALUES (432, 'FTZO book', 'Angela Moore', '奥地利', '106135', 'Navicat provides a wide range advanced            ', 'Sakai Sara', 246.12, '2002-08-24', 2, 1);
INSERT INTO `book_info` VALUES (433, 'UFMR book', 'Mildred Ramirez', '特立尼达和多巴哥', '109746', 'Genius is an infinite capacity for taking pains.', 'Nakagawa Aoshi', 780.02, '2007-10-02', 1, 0);
INSERT INTO `book_info` VALUES (434, 'GMES book', 'Gerald Medina', '巴拿马', '103039', 'You cannot save people, you can just love them.', 'Leslie Graham', 124.86, '2010-01-08', 3, 1);
INSERT INTO `book_info` VALUES (435, 'FSYS book', 'Patricia Black', '英国', '100393', 'Secure SHell (SSH) is a program                   ', 'Miu Ting Fung', 711.07, '2017-08-29', 3, 0);
INSERT INTO `book_info` VALUES (436, 'AGPK book', 'Doris Wagner', '俄罗斯联邦', '109506', 'Navicat Data Modeler enables you                  ', 'Melvin Foster', 846.14, '2018-11-19', 5, 1);
INSERT INTO `book_info` VALUES (437, 'PYCY book', 'Cindy Porter', '列支敦士登', '107134', 'The past has no power over the present moment.', 'Okada Itsuki', 87.55, '2013-06-21', 2, 1);
INSERT INTO `book_info` VALUES (438, 'EVKX book', 'Billy Fernandez', '圣多美和普林西比', '102418', 'The Navigation pane employs tree                  ', 'Zeng Yuning', 905.78, '2021-09-12', 3, 1);
INSERT INTO `book_info` VALUES (439, 'OOBF book', 'Kathryn Murphy', '埃斯瓦蒂尼', '103634', 'How we spend our days is, of course,              ', 'Mui Chiu Wai', 661.4, '2001-08-27', 2, 1);
INSERT INTO `book_info` VALUES (440, 'DVFO book', 'Michelle Alvarez', '古巴', '102326', 'There is no way to happiness. Happiness           ', 'Yao Shihan', 126.77, '2012-11-29', 3, 0);
INSERT INTO `book_info` VALUES (441, 'IUKP book', 'Clarence Mcdonald', '苏丹', '106473', 'In other words, Navicat provides                  ', 'Alfred Lee', 605.01, '2021-10-24', 4, 1);
INSERT INTO `book_info` VALUES (442, 'SPXY book', 'Joanne Crawford', '毛里塔尼亚', '109526', 'All the Navicat Cloud objects are                 ', 'Theresa Foster', 187.56, '2017-03-10', 3, 0);
INSERT INTO `book_info` VALUES (443, 'ENQP book', 'Karen Flores', '南苏丹', '109045', 'To get a secure connection, the                   ', 'Siu Chun Yu', 423.3, '2010-07-31', 4, 0);
INSERT INTO `book_info` VALUES (444, 'XHSR book', 'Kathryn Jackson', '阿塞拜疆', '106843', 'If it scares you, it might be a good thing to try.', 'Uchida Shino', 388.39, '2017-10-04', 4, 0);
INSERT INTO `book_info` VALUES (445, 'MFWF book', 'Denise Green', '汤加', '102628', 'Anyone who has never made a mistake               ', 'Kwok Wing Kuen', 163.99, '2009-12-06', 5, 0);
INSERT INTO `book_info` VALUES (446, 'ZJWJ book', 'Phillip Jimenez', '秘鲁', '101938', 'Typically, it is employed as an                   ', 'Donald Marshall', 140.74, '2020-08-14', 1, 1);
INSERT INTO `book_info` VALUES (447, 'WRJL book', 'Margaret Gray', '东帝汶', '104543', 'The repository database can be                    ', 'Lawrence Baker', 802.39, '2022-04-02', 3, 0);
INSERT INTO `book_info` VALUES (448, 'SLLS book', 'Tracy Foster', '突尼斯', '101351', 'You must be the change you wish                   ', 'Chin Hui Mei', 898.22, '2010-07-12', 5, 1);
INSERT INTO `book_info` VALUES (449, 'OMVR book', 'Clara Ford', '爱尔兰', '108430', 'The past has no power over the present moment.', 'Sit Ka Fai', 591.19, '2018-08-19', 4, 1);
INSERT INTO `book_info` VALUES (450, 'UKBY book', 'Nathan Walker', '荷兰', '107175', 'Typically, it is employed as an                   ', 'Kikuchi Eita', 279.91, '2011-07-12', 4, 0);
INSERT INTO `book_info` VALUES (451, 'HEYH book', 'Barbara Patel', '泰国', '104641', 'Creativity is intelligence having fun.            ', 'Zhou Zitao', 913.88, '2000-03-26', 2, 1);
INSERT INTO `book_info` VALUES (452, 'LISX book', 'Linda Patel', '巴拉圭', '100560', 'To successfully establish a new                   ', 'Howard Alexander', 389.87, '2003-02-03', 3, 1);
INSERT INTO `book_info` VALUES (453, 'PEUJ book', 'Alexander Burns', '南苏丹', '102716', 'In other words, Navicat provides                  ', 'Zheng Shihan', 823.55, '2001-03-08', 3, 0);
INSERT INTO `book_info` VALUES (454, 'LGEU book', 'Douglas Lee', '捷克共和国', '103212', 'To start working with your server                 ', 'Choi Kwok Wing', 657.66, '2017-09-18', 3, 0);
INSERT INTO `book_info` VALUES (455, 'MXYC book', 'Marilyn Garcia', '巴拉圭', '109436', 'It provides strong authentication                 ', 'Inoue Kenta', 652.63, '2002-07-30', 3, 1);
INSERT INTO `book_info` VALUES (456, 'GVCD book', 'Clara Martinez', '吉布地', '107213', 'The On Startup feature allows you                 ', 'Kam Hiu Tung', 170.03, '2007-03-17', 5, 1);
INSERT INTO `book_info` VALUES (457, 'IHQL book', 'Shannon Cooper', '莫桑比克', '107896', 'SSH serves to prevent such vulnerabilities        ', 'Lu Anqi', 888.59, '2010-01-22', 3, 1);
INSERT INTO `book_info` VALUES (458, 'VWSY book', 'Connie Ortiz', '秘鲁', '103125', 'To start working with your server                 ', 'Tian Zitao', 69.18, '2005-12-30', 3, 1);
INSERT INTO `book_info` VALUES (459, 'FRRB book', 'Randy Ford', '马尔代夫', '108621', 'Navicat Monitor is a safe, simple                 ', 'Liu Yunxi', 342.28, '2008-06-28', 2, 1);
INSERT INTO `book_info` VALUES (460, 'PFUS book', 'Alexander Wagner', '伊拉克', '107413', 'Anyone who has never made a mistake               ', 'Yu Xiaoming', 700.74, '2016-02-02', 3, 1);
INSERT INTO `book_info` VALUES (461, 'GDHQ book', 'Marilyn Jenkins', '沙特阿拉伯', '108564', 'If you wait, all that happens is you get older.', 'Shao Lan', 447.81, '2017-03-25', 2, 0);
INSERT INTO `book_info` VALUES (462, 'FRLB book', 'Charles Vargas', '罗马尼亚', '106616', 'To get a secure connection, the                   ', 'Han Kwok Ming', 986.8, '2013-05-23', 3, 1);
INSERT INTO `book_info` VALUES (463, 'PTBY book', 'Johnny Gordon', '瑞士', '105412', 'Import Wizard allows you to import                ', 'Yau Wing Sze', 586.82, '2001-08-20', 2, 1);
INSERT INTO `book_info` VALUES (464, 'YIGG book', 'Howard Freeman', '瑞典', '105212', 'Navicat provides powerful tools                   ', 'Mori Hina', 119.72, '2006-03-31', 5, 0);
INSERT INTO `book_info` VALUES (465, 'NZKO book', 'Teresa Black', '危地马拉', '101711', 'Optimism is the one quality more                  ', 'Carolyn Thomas', 810.68, '2009-01-08', 1, 0);
INSERT INTO `book_info` VALUES (466, 'DGRF book', 'Tony Powell', '冈比亚', '100826', 'Champions keep playing until they get it right.', 'Luis Baker', 501.67, '2011-12-03', 3, 1);
INSERT INTO `book_info` VALUES (467, 'ZITH book', 'Robert Thomas', '厄瓜多尔', '100078', 'Always keep your eyes open. Keep                  ', 'Kimura Akina', 248.53, '2019-11-10', 3, 0);
INSERT INTO `book_info` VALUES (468, 'PHPL book', 'Frederick Jimenez', '牙买加', '100104', 'A comfort zone is a beautiful place,              ', 'Tong Lik Sun', 161.46, '2013-05-15', 1, 0);
INSERT INTO `book_info` VALUES (469, 'ACLL book', 'Paul Anderson', '墨西哥', '100989', 'Genius is an infinite capacity for taking pains.', 'So Sai Wing', 510.74, '2004-02-18', 5, 0);
INSERT INTO `book_info` VALUES (470, 'MNHW book', 'Herbert Vasquez', '古巴', '105772', 'Genius is an infinite capacity for taking pains.', 'Siu Cho Yee', 980.26, '2010-06-10', 1, 1);
INSERT INTO `book_info` VALUES (471, 'NTTA book', 'Judy Mason', '多明尼加共和国', '107292', 'If it scares you, it might be a good thing to try.', 'Chung Ka Ming', 775.72, '2003-09-24', 3, 0);
INSERT INTO `book_info` VALUES (472, 'HGWY book', 'Anthony Hill', '斯洛伐克', '105133', 'If you wait, all that happens is you get older.', 'Anne Stephens', 431.87, '2009-07-24', 3, 1);
INSERT INTO `book_info` VALUES (473, 'OHWM book', 'Joanne Moreno', '厄瓜多尔', '100292', 'Import Wizard allows you to import                ', 'Takahashi Mai', 574.33, '2012-04-17', 4, 0);
INSERT INTO `book_info` VALUES (474, 'TFIJ book', 'Ralph Nelson', '萨尔瓦多', '103185', 'To connect to a database or schema,               ', 'Zhao Zhennan', 416.55, '2022-01-02', 3, 1);
INSERT INTO `book_info` VALUES (475, 'HIEX book', 'Jesse Perry', '南非', '102278', 'Secure SHell (SSH) is a program                   ', 'Tian Jiehong', 861.81, '2015-07-07', 1, 0);
INSERT INTO `book_info` VALUES (476, 'DTIF book', 'Cindy Mendez', '安道尔', '103163', 'To connect to a database or schema,               ', 'Xie Xiuying', 617.07, '2013-03-14', 2, 1);
INSERT INTO `book_info` VALUES (477, 'ZONU book', 'Hazel Gomez', '爱尔兰', '105883', 'A query is used to extract data                   ', 'Lok Chi Yuen', 815.75, '2018-10-12', 4, 0);
INSERT INTO `book_info` VALUES (478, 'EKFP book', 'Marilyn Burns', '伊朗（伊斯兰共和国）', '101382', 'If the Show objects under schema                  ', 'Watanabe Sakura', 756.82, '2015-08-13', 3, 0);
INSERT INTO `book_info` VALUES (479, 'OPTE book', 'Carmen Burns', '海地', '100803', 'Navicat Monitor requires a repository             ', 'Tong Wai Man', 690.44, '2004-08-31', 3, 1);
INSERT INTO `book_info` VALUES (480, 'DYXJ book', 'Steve Herrera', '俄罗斯联邦', '102649', 'I destroy my enemies when I make them my friends.', 'Lu Jialun', 251.61, '2000-08-16', 5, 0);
INSERT INTO `book_info` VALUES (481, 'WXEU book', 'Jesus Sanders', '东帝汶', '104199', 'You will succeed because most people are lazy.', 'Chan Wai Man', 766.89, '2003-04-30', 3, 0);
INSERT INTO `book_info` VALUES (482, 'RQMT book', 'Theodore Gray', '泰国', '102631', 'All journeys have secret destinations             ', 'Yung Chun Yu', 99.16, '2017-12-15', 2, 0);
INSERT INTO `book_info` VALUES (483, 'BGXD book', 'Lisa Grant', '马拉维', '100724', 'Anyone who has ever made anything                 ', 'Pan Anqi', 730.85, '2015-04-21', 2, 0);
INSERT INTO `book_info` VALUES (484, 'RRPE book', 'Tiffany Turner', '塞浦路斯', '102474', 'How we spend our days is, of course,              ', 'Meng Rui', 325.62, '2008-12-02', 4, 0);
INSERT INTO `book_info` VALUES (485, 'KROS book', 'Victoria Henry', '黎巴嫩', '106520', 'The On Startup feature allows you                 ', 'Vincent Rogers', 924.67, '2017-11-15', 1, 1);
INSERT INTO `book_info` VALUES (486, 'ZKNC book', 'Shirley Mitchell', '喀麦隆', '102437', 'Remember that failure is an event, not a person.', 'Shimizu Kazuma', 574.53, '2017-09-03', 5, 0);
INSERT INTO `book_info` VALUES (487, 'OQCE book', 'Rodney Owens', '列支敦士登', '102306', 'Sometimes you win, sometimes you learn.', 'Iwasaki Airi', 297.31, '2016-12-25', 2, 1);
INSERT INTO `book_info` VALUES (488, 'UZLI book', 'Phyllis Boyd', '阿曼', '101512', 'Navicat allows you to transfer                    ', 'Zheng Zitao', 573.19, '2010-09-16', 2, 1);
INSERT INTO `book_info` VALUES (489, 'VAOP book', 'Daniel Jenkins', '乌干达', '107418', 'The Main Window consists of several               ', 'Qian Shihan', 757.8, '2003-03-08', 2, 0);
INSERT INTO `book_info` VALUES (490, 'PLTY book', 'Keith Romero', '佛得角', '105895', 'All the Navicat Cloud objects are                 ', 'Lu Anqi', 989.32, '2011-11-26', 4, 0);
INSERT INTO `book_info` VALUES (491, 'ZGUI book', 'Joe Moreno', '比利时', '104581', 'The Synchronize to Database function              ', 'Jessica Flores', 818.78, '2000-10-16', 3, 0);
INSERT INTO `book_info` VALUES (492, 'ERSF book', 'Harry Wallace', '乍得', '106804', 'Navicat Data Modeler enables you                  ', 'Tiffany Chavez', 604.79, '2012-02-16', 3, 0);
INSERT INTO `book_info` VALUES (493, 'BXPP book', 'Francis Warren', '荷兰', '106756', 'You can select any connections,                   ', 'Carlos Bennett', 533.73, '2011-06-28', 4, 0);
INSERT INTO `book_info` VALUES (494, 'VGIT book', 'Carol Rodriguez', '以色列', '100673', 'Navicat 15 has added support for                  ', 'Wong Suk Yee', 699.22, '2000-05-26', 2, 0);
INSERT INTO `book_info` VALUES (495, 'WGDH book', 'Eleanor Kelley', '阿根廷', '109917', 'The first step is as good as half over.', 'Kono Takuya', 776.98, '2001-05-08', 1, 1);
INSERT INTO `book_info` VALUES (496, 'XNWN book', 'Katherine Clark', '马达加斯加', '102736', 'HTTP Tunneling is a method for                    ', 'Cao Shihan', 433.24, '2020-01-13', 1, 1);
INSERT INTO `book_info` VALUES (497, 'BWHH book', 'Heather Williams', '马里', '107463', 'Difficult circumstances serve as                  ', 'Guo Jialun', 109.41, '2004-11-08', 4, 0);
INSERT INTO `book_info` VALUES (498, 'UEYD book', 'Lori Ortiz', '瑙鲁', '103638', 'After comparing data, the window                  ', 'Chu Wai Han', 980.67, '2002-08-27', 4, 0);
INSERT INTO `book_info` VALUES (499, 'BJWK book', 'Nicole Gonzalez', '卢森堡', '108090', 'To get a secure connection, the                   ', 'Yu Zhennan', 859.88, '2003-08-07', 2, 0);
INSERT INTO `book_info` VALUES (500, 'EIKU book', 'Evelyn Reed', '瓦努阿图', '102190', 'If your Internet Service Provider                 ', 'Wang Jialun', 980.57, '2000-05-28', 1, 0);
INSERT INTO `book_info` VALUES (501, 'LWHE book', 'Helen Wright', '巴拉圭', '107310', 'If the plan doesn’t work, change                ', 'Sharon Butler', 526.24, '2000-02-01', 5, 0);
INSERT INTO `book_info` VALUES (502, 'MXNQ book', 'Lois Hayes', '塞浦路斯', '109396', 'Flexible settings enable you to                   ', 'Yuen Sze Kwan', 762.08, '2020-06-26', 4, 1);
INSERT INTO `book_info` VALUES (503, 'ZOHM book', 'Bobby Russell', '马绍尔群岛', '106251', 'Secure SHell (SSH) is a program                   ', 'Donna Gray', 350.6, '2014-01-25', 2, 0);
INSERT INTO `book_info` VALUES (504, 'SBLR book', 'Bernard Wallace', '圣马力诺', '103448', 'Actually it is just in an idea                    ', 'Sheh Kwok Ming', 744.14, '2007-07-08', 2, 1);
INSERT INTO `book_info` VALUES (505, 'YWQJ book', 'Elaine Sanchez', '基里巴斯', '108607', 'Champions keep playing until they get it right.', 'Goto Yamato', 321.09, '2006-04-25', 2, 1);
INSERT INTO `book_info` VALUES (506, 'UBPX book', 'William Fisher', '越南', '108266', 'To clear or reload various internal               ', 'Ikeda Mai', 391.8, '2017-05-14', 3, 1);
INSERT INTO `book_info` VALUES (507, 'NVJK book', 'Clarence Gutierrez', '立陶宛', '104528', 'Actually it is just in an idea                    ', 'Kevin Gray', 472.12, '2014-07-12', 2, 0);
INSERT INTO `book_info` VALUES (508, 'QTXB book', 'Betty Hughes', '巴拿马', '109009', 'There is no way to happiness. Happiness           ', 'Yuan Zhiyuan', 81.8, '2015-05-03', 5, 1);
INSERT INTO `book_info` VALUES (509, 'VBGR book', 'Janet Burns', '莫桑比克', '109635', 'Export Wizard allows you to export                ', 'Linda Palmer', 928.33, '2010-01-24', 1, 1);
INSERT INTO `book_info` VALUES (510, 'PHFU book', 'Peter Castillo', '博茨瓦纳', '100211', 'Optimism is the one quality more                  ', 'Mak Tsz Hin', 316.26, '2014-09-04', 3, 0);
INSERT INTO `book_info` VALUES (511, 'ZZCH book', 'Randall Vargas', '索马里', '104142', 'Genius is an infinite capacity for taking pains.', 'Pak Tin Wing', 315.42, '2008-12-15', 5, 0);
INSERT INTO `book_info` VALUES (512, 'IZHM book', 'Julia Washington', '阿尔及利亚', '109828', 'HTTP Tunneling is a method for                    ', 'Yamamoto Yuna', 665.21, '2002-08-28', 2, 1);
INSERT INTO `book_info` VALUES (513, 'NFZQ book', 'Frances Young', '荷兰', '101231', 'The past has no power over the present moment.', 'Hashimoto Minato', 274.26, '2014-01-08', 2, 0);
INSERT INTO `book_info` VALUES (514, 'PNIB book', 'Jack Olson', '埃及', '106702', 'Always keep your eyes open. Keep                  ', 'Han Hok Yau', 401.5, '2021-01-20', 2, 0);
INSERT INTO `book_info` VALUES (515, 'PWFO book', 'Earl Phillips', '奥地利', '106726', 'A comfort zone is a beautiful place,              ', 'Edwin Dunn', 997.1, '2019-12-03', 2, 0);
INSERT INTO `book_info` VALUES (516, 'UJVN book', 'Thelma Kelley', '科特迪瓦', '106392', 'If opportunity doesn’t knock, build a door.     ', 'Carmen Gibson', 955.97, '2018-08-12', 1, 0);
INSERT INTO `book_info` VALUES (517, 'XAZK book', 'Steven Garza', '秘鲁', '102004', 'Sometimes you win, sometimes you learn.', 'Nakayama Hana', 506.71, '2012-04-11', 4, 0);
INSERT INTO `book_info` VALUES (518, 'ZNOS book', 'Ernest Ryan', '马尔代夫', '107619', 'After comparing data, the window                  ', 'Yin Wai San', 427.67, '2015-06-23', 1, 0);
INSERT INTO `book_info` VALUES (519, 'KSRL book', 'Rachel Rice', '英国', '107405', 'If it scares you, it might be a good thing to try.', 'Choi Hui Mei', 26.93, '2011-06-18', 1, 1);
INSERT INTO `book_info` VALUES (520, 'NHNA book', 'Glenn Johnson', '马来西亚', '103603', 'After logged in the Navicat Cloud                 ', 'Danny Sanders', 157.36, '2015-06-24', 2, 0);
INSERT INTO `book_info` VALUES (521, 'ACSZ book', 'Denise Martinez', '冈比亚', '101157', 'To clear or reload various internal               ', 'Lu Zitao', 937.08, '2007-02-24', 2, 1);
INSERT INTO `book_info` VALUES (522, 'TFNN book', 'Jennifer Clark', '萨摩亚', '100154', 'If the plan doesn’t work, change                ', 'Brenda Rice', 278.56, '2003-03-22', 3, 0);
INSERT INTO `book_info` VALUES (523, 'KLEU book', 'Grace Mcdonald', '布隆迪', '109945', 'The Synchronize to Database function              ', 'Lee Tak Wah', 465.78, '2002-12-22', 4, 1);
INSERT INTO `book_info` VALUES (524, 'YBDW book', 'Lucille Robertson', '特立尼达和多巴哥', '109785', 'There is no way to happiness. Happiness           ', 'Ralph Hamilton', 729.93, '2018-01-27', 3, 1);
INSERT INTO `book_info` VALUES (525, 'IYSF book', 'Louis Peterson', '巴林', '102531', 'If your Internet Service Provider                 ', 'Kenneth Parker', 998.98, '2009-01-29', 3, 1);
INSERT INTO `book_info` VALUES (526, 'DWQQ book', 'Matthew Cook', '罗马尼亚', '107437', 'It collects process metrics such                  ', 'Mak Sze Kwan', 854.42, '2018-10-29', 5, 0);
INSERT INTO `book_info` VALUES (527, 'WIPK book', 'Leonard Mendez', '奈及利亚', '101578', 'You cannot save people, you can just love them.', 'Amy Hawkins', 703.67, '2005-03-06', 1, 0);
INSERT INTO `book_info` VALUES (528, 'QPDU book', 'Jose Kim', '密克罗尼西亚（联邦国）', '103488', 'Navicat Data Modeler is a powerful                ', 'Chen Jialun', 876.45, '2017-12-21', 3, 1);
INSERT INTO `book_info` VALUES (529, 'STKR book', 'Joel Morales', '马里', '107246', 'Navicat Data Modeler is a powerful                ', 'Shibata Mio', 476.63, '2005-12-13', 3, 0);
INSERT INTO `book_info` VALUES (530, 'KCQX book', 'Debbie Hamilton', '科摩罗', '107014', 'In other words, Navicat provides                  ', 'Liao Ho Yin', 910.86, '2019-11-10', 3, 1);
INSERT INTO `book_info` VALUES (531, 'ALWS book', 'Teresa Fernandez', '津巴布韦', '101253', 'Navicat provides a wide range advanced            ', 'Liu Xiuying', 635.57, '2000-01-11', 4, 0);
INSERT INTO `book_info` VALUES (532, 'DBYW book', 'Russell Mcdonald', '纳米比亚', '101304', 'With its well-designed Graphical                  ', 'Yuan Shihan', 451.04, '2003-06-17', 2, 0);
INSERT INTO `book_info` VALUES (533, 'AGZF book', 'Rodney Sanchez', '东帝汶', '105332', 'Navicat Cloud provides a cloud                    ', 'Tang Zhennan', 522.65, '2012-02-07', 2, 0);
INSERT INTO `book_info` VALUES (534, 'WGVC book', 'Leslie Jenkins', '菲律宾', '104221', 'Navicat provides a wide range advanced            ', 'Yamamoto Kazuma', 726.62, '2017-11-03', 2, 1);
INSERT INTO `book_info` VALUES (535, 'JSVJ book', 'Earl Kim', '巴布亚新几内亚', '103134', 'If your Internet Service Provider                 ', 'Jamie Daniels', 578.09, '2006-07-15', 3, 1);
INSERT INTO `book_info` VALUES (536, 'HOLV book', 'Anthony Vasquez', '卡塔尔', '104965', 'It is used while your ISPs do not                 ', 'Nishimura Ren', 440.9, '2015-06-18', 4, 0);
INSERT INTO `book_info` VALUES (537, 'OFYY book', 'Lois Munoz', '斯里兰卡', '107892', 'It provides strong authentication                 ', 'Koon Hok Yau', 769.04, '2012-12-26', 3, 0);
INSERT INTO `book_info` VALUES (538, 'MFIC book', 'Alexander Gutierrez', '大韩民国', '108723', 'Flexible settings enable you to                   ', 'Cui Lu', 400.61, '2013-10-14', 5, 1);
INSERT INTO `book_info` VALUES (539, 'EHKJ book', 'Michael Ruiz', '赞比亚', '101597', 'Navicat Cloud provides a cloud                    ', 'Deng Xiaoming', 764.53, '2001-03-30', 4, 1);
INSERT INTO `book_info` VALUES (540, 'TNVU book', 'Nicole Lee', '坦桑尼亚联合共和国', '105855', 'If the Show objects under schema                  ', 'Cheng Zhennan', 392.95, '2020-09-30', 3, 1);
INSERT INTO `book_info` VALUES (541, 'SUJE book', 'Ryan Bennett', '柬埔寨', '109838', 'It collects process metrics such                  ', 'Christina Hayes', 449.17, '2001-08-28', 2, 0);
INSERT INTO `book_info` VALUES (542, 'OARU book', 'Joanne Bell', '大韩民国', '106596', 'The reason why a great man is great               ', 'Liao Siu Wai', 760.93, '2010-01-05', 4, 0);
INSERT INTO `book_info` VALUES (543, 'RIDR book', 'Dorothy Ryan', '乌兹别克斯坦', '101751', 'Navicat allows you to transfer                    ', 'Troy Chen', 350.41, '2015-01-23', 5, 0);
INSERT INTO `book_info` VALUES (544, 'BWZO book', 'Mary Owens', '埃及', '101466', 'To connect to a database or schema,               ', 'Yoshida Rin', 36.93, '2004-06-18', 4, 1);
INSERT INTO `book_info` VALUES (545, 'FUJN book', 'Victoria Russell', '安哥拉', '105564', 'Navicat Cloud provides a cloud                    ', 'Yuen Wai San', 662.43, '2009-10-31', 3, 0);
INSERT INTO `book_info` VALUES (546, 'PLXI book', 'Lillian Ryan', '北马其顿', '108196', 'You can select any connections,                   ', 'Hui Wing Sze', 579.91, '2019-07-01', 2, 1);
INSERT INTO `book_info` VALUES (547, 'KJLN book', 'Grace Lewis', '加纳', '109214', 'Monitored servers include MySQL,                  ', 'Lee Ching Wan', 644.64, '2005-11-11', 3, 1);
INSERT INTO `book_info` VALUES (548, 'BVJD book', 'Carolyn Ramirez', '圣马力诺', '108896', 'SSH serves to prevent such vulnerabilities        ', 'Gong Anqi', 693.83, '2002-12-23', 3, 0);
INSERT INTO `book_info` VALUES (549, 'OVJJ book', 'Anthony Salazar', '卢旺达', '100582', 'There is no way to happiness. Happiness           ', 'Sara Vasquez', 801.76, '2012-04-14', 5, 1);
INSERT INTO `book_info` VALUES (550, 'KLOI book', 'Ruth Anderson', '奈及利亚', '101264', 'Navicat 15 has added support for                  ', 'Yan Jiehong', 282.83, '2008-03-10', 3, 1);
INSERT INTO `book_info` VALUES (551, 'IUOJ book', 'Marcus Taylor', '也门', '106894', 'Navicat Data Modeler is a powerful                ', 'Mao Shihan', 336.1, '2001-04-11', 5, 1);
INSERT INTO `book_info` VALUES (552, 'PLHO book', 'Eugene Romero', '伊拉克', '109592', 'Flexible settings enable you to                   ', 'Abe Hikari', 41.38, '2007-12-31', 1, 1);
INSERT INTO `book_info` VALUES (553, 'JCNK book', 'Shawn Hunter', '利比亚', '101823', 'A man’s best friends are his ten fingers.', 'Randy Murray', 405.52, '2017-12-27', 4, 1);
INSERT INTO `book_info` VALUES (554, 'HXIK book', 'Tracy Roberts', '安提瓜和巴布达', '108418', 'It collects process metrics such                  ', 'Daniel Scott', 213.94, '2007-06-27', 4, 0);
INSERT INTO `book_info` VALUES (555, 'KCAL book', 'Heather Gomez', '孟加拉国', '104977', 'Navicat 15 has added support for                  ', 'Kobayashi Mio', 220.89, '2010-07-26', 5, 0);
INSERT INTO `book_info` VALUES (556, 'TRPV book', 'Ashley Moore', '特立尼达和多巴哥', '107271', 'Anyone who has ever made anything                 ', 'Cheng Xiuying', 925.5, '2009-12-19', 3, 1);
INSERT INTO `book_info` VALUES (557, 'IODS book', 'Terry Cole', '斯里兰卡', '101188', 'The Main Window consists of several               ', 'Christina Morales', 510.59, '2017-03-15', 2, 0);
INSERT INTO `book_info` VALUES (558, 'YXIV book', 'Charles Gonzales', '安哥拉', '104958', 'Remember that failure is an event, not a person.', 'Wei Ziyi', 448.52, '2010-10-16', 2, 0);
INSERT INTO `book_info` VALUES (559, 'LDIC book', 'Juan Adams', '克罗地亚', '108131', 'It is used while your ISPs do not                 ', 'Kong On Kay', 578.94, '2001-06-24', 5, 0);
INSERT INTO `book_info` VALUES (560, 'FFOE book', 'Helen Snyder', '斯里兰卡', '109875', 'Difficult circumstances serve as                  ', 'Sato Mitsuki', 562.43, '2014-02-02', 3, 1);
INSERT INTO `book_info` VALUES (561, 'XLXF book', 'Jeremy Robertson', '多明尼加共和国', '107369', 'You will succeed because most people are lazy.', 'Fan Jiehong', 209.49, '2003-01-26', 1, 0);
INSERT INTO `book_info` VALUES (562, 'FULJ book', 'Glenn Morales', '乍得', '108811', 'Anyone who has never made a mistake               ', 'Ono Sara', 20.06, '2014-10-29', 3, 1);
INSERT INTO `book_info` VALUES (563, 'DPKJ book', 'Travis Ward', '博茨瓦纳', '106634', 'A man’s best friends are his ten fingers.       ', 'Clara Perez', 564.65, '2020-07-06', 3, 1);
INSERT INTO `book_info` VALUES (564, 'KQTO book', 'Elizabeth Chen', '德国', '109403', 'The first step is as good as half over.', 'Masuda Sara', 699.15, '2000-06-23', 4, 0);
INSERT INTO `book_info` VALUES (565, 'OHDY book', 'Alexander Wells', '马达加斯加', '109996', 'The Navigation pane employs tree                  ', 'Lu Anqi', 815.74, '2004-06-01', 2, 1);
INSERT INTO `book_info` VALUES (566, 'YDQV book', 'Peggy Fernandez', '尼泊尔', '104489', 'I may not have gone where I intended              ', 'Catherine Ferguson', 163.88, '2003-03-21', 2, 1);
INSERT INTO `book_info` VALUES (567, 'XNIJ book', 'Bobby Hayes', '大韩民国', '108585', 'To get a secure connection, the                   ', 'Okamoto Daichi', 934.66, '2011-02-23', 2, 1);
INSERT INTO `book_info` VALUES (568, 'RSKU book', 'Kevin Romero', '阿曼', '101750', 'To clear or reload various internal               ', 'Thelma Murphy', 93.18, '2014-07-01', 3, 0);
INSERT INTO `book_info` VALUES (569, 'YQEI book', 'Bonnie Owens', '佐治亚州', '104093', 'Always keep your eyes open. Keep                  ', 'Barry Meyer', 780.87, '2011-12-10', 3, 0);
INSERT INTO `book_info` VALUES (570, 'TGUD book', 'Joel Flores', '西班牙', '101687', 'It wasn’t raining when Noah built the ark.', 'Pak Ling Ling', 788.48, '2006-01-08', 2, 1);
INSERT INTO `book_info` VALUES (571, 'IELK book', 'Joshua Snyder', '斯洛伐克', '102302', 'You must be the change you wish                   ', 'Gladys Thompson', 857.53, '2015-12-19', 3, 0);
INSERT INTO `book_info` VALUES (572, 'GFYV book', 'Antonio Gutierrez', '帛硫', '103279', 'Import Wizard allows you to import                ', 'Tian Lu', 163.46, '2003-09-21', 5, 0);
INSERT INTO `book_info` VALUES (573, 'USEZ book', 'Marilyn Cox', '贝宁', '109589', 'After logged in the Navicat Cloud                 ', 'Shibata Kasumi', 464.41, '2017-05-20', 4, 1);
INSERT INTO `book_info` VALUES (574, 'JUMW book', 'Ralph Schmidt', '阿塞拜疆', '105517', 'Genius is an infinite capacity for taking pains.', 'Wong Hiu Tung', 888.58, '2011-03-09', 3, 0);
INSERT INTO `book_info` VALUES (575, 'MSAK book', 'Larry Hughes', '索马里', '101527', 'Navicat Cloud provides a cloud                    ', 'Ku Wing Fat', 222.83, '2017-03-30', 2, 1);
INSERT INTO `book_info` VALUES (576, 'QLMV book', 'Norma Shaw', '苏丹', '105576', 'Monitored servers include MySQL,                  ', 'Cui Xiuying', 638.56, '2005-12-30', 2, 0);
INSERT INTO `book_info` VALUES (577, 'IYSQ book', 'Edwin Payne', '哈萨克斯坦', '104508', 'Navicat Cloud could not connect                   ', 'Shi Anqi', 230.15, '2021-03-14', 3, 1);
INSERT INTO `book_info` VALUES (578, 'GNZW book', 'Mario Jackson', '塞舌尔', '107644', 'If your Internet Service Provider                 ', 'Chang Yunxi', 431.69, '2011-07-13', 3, 0);
INSERT INTO `book_info` VALUES (579, 'QHCM book', 'Marcus Ortiz', '摩洛哥', '101810', 'If the plan doesn’t work, change                ', 'Takagi Kenta', 895.29, '2007-05-19', 4, 0);
INSERT INTO `book_info` VALUES (580, 'ZYNV book', 'Connie Simmons', '阿塞拜疆', '105570', 'How we spend our days is, of course,              ', 'Mak Tin Wing', 659.29, '2002-12-24', 4, 1);
INSERT INTO `book_info` VALUES (581, 'VRZM book', 'Henry Green', '帛硫', '109277', 'The past has no power over the present moment.', 'Yu Jiehong', 253.23, '2006-01-16', 2, 1);
INSERT INTO `book_info` VALUES (582, 'BEZE book', 'Tracy Castro', '俄罗斯联邦', '107324', 'You must be the change you wish                   ', 'Gu Zitao', 374.54, '2020-04-21', 5, 1);
INSERT INTO `book_info` VALUES (583, 'WWCU book', 'Donald Hunter', '吉布地', '103957', 'Typically, it is employed as an                   ', 'Takeuchi Hikari', 723, '2003-02-24', 2, 1);
INSERT INTO `book_info` VALUES (584, 'XAKJ book', 'Martin Thompson', '刚果民主共和国', '107996', 'The first step is as good as half over.', 'Murakami Ren', 632.85, '2012-06-25', 2, 0);
INSERT INTO `book_info` VALUES (585, 'INJO book', 'Edwin Garcia', '匈牙利', '104657', 'Anyone who has never made a mistake               ', 'Wong Ka Ling', 299.71, '2005-02-05', 1, 1);
INSERT INTO `book_info` VALUES (586, 'AAGY book', 'Nicholas Black', '以色列', '102131', 'I may not have gone where I intended              ', 'Fong Yu Ling', 968.97, '2010-05-05', 4, 0);
INSERT INTO `book_info` VALUES (587, 'KFPP book', 'Denise Woods', '突尼斯', '109412', 'A man is not old until regrets                    ', 'Mok Yu Ling', 281.3, '2009-02-26', 4, 1);
INSERT INTO `book_info` VALUES (588, 'NHDJ book', 'Kelly Lopez', '科特迪瓦', '105582', 'All the Navicat Cloud objects are                 ', 'Yan Lan', 834.44, '2022-02-15', 2, 1);
INSERT INTO `book_info` VALUES (589, 'LHRK book', 'Kelly Kennedy', '孟加拉国', '103041', 'You must be the change you wish                   ', 'Ueda Itsuki', 51.85, '2000-08-03', 4, 0);
INSERT INTO `book_info` VALUES (590, 'GFNV book', 'Miguel Olson', '越南', '103252', 'Secure Sockets Layer(SSL) is a                    ', 'Tanaka Sakura', 914.83, '2017-04-06', 2, 1);
INSERT INTO `book_info` VALUES (591, 'XFFW book', 'Jeffery Guzman', '密克罗尼西亚（联邦国）', '100597', 'You cannot save people, you can just love them.', 'Tin Wing Fat', 91.21, '2018-09-24', 3, 0);
INSERT INTO `book_info` VALUES (592, 'YRVW book', 'Larry Parker', '泰国', '108398', 'If you wait, all that happens is you get older.', 'Anna Wallace', 107.4, '2001-08-18', 2, 1);
INSERT INTO `book_info` VALUES (593, 'UOTQ book', 'Evelyn Robertson', '尼泊尔', '104938', 'You can select any connections,                   ', 'Helen Reynolds', 326.53, '2000-07-05', 2, 1);
INSERT INTO `book_info` VALUES (594, 'MHON book', 'Willie Wright', '马拉维', '107071', 'It collects process metrics such                  ', 'Chang Siu Wai', 420.77, '2004-03-25', 5, 1);
INSERT INTO `book_info` VALUES (595, 'TXRG book', 'Patrick Dunn', '阿拉伯联合酋长国', '103140', 'With its well-designed Graphical                  ', 'Sakai Hikaru', 605.58, '2006-04-13', 4, 0);
INSERT INTO `book_info` VALUES (596, 'HLHX book', 'Florence Reyes', '塞尔维亚', '107060', 'A query is used to extract data                   ', 'Steven Butler', 594.58, '2017-09-27', 2, 1);
INSERT INTO `book_info` VALUES (597, 'ZOKO book', 'Deborah Alexander', '莫桑比克', '103514', 'A man’s best friends are his ten fingers.', 'Che Ming Sze', 959.76, '2016-01-30', 2, 1);
INSERT INTO `book_info` VALUES (598, 'DSXC book', 'Cindy Taylor', '卡塔尔', '104022', 'To open a query using an external                 ', 'Goto Yuito', 449.08, '2021-11-23', 1, 1);
INSERT INTO `book_info` VALUES (599, 'EVXD book', 'Louise Reyes', '沙特阿拉伯', '100034', 'Navicat Monitor can be installed                  ', 'Saito Yuto', 35.27, '2003-06-13', 4, 1);
INSERT INTO `book_info` VALUES (600, 'AIVL book', 'Jose Roberts', '俄罗斯联邦', '109330', 'Champions keep playing until they get it right.', 'Teresa Schmidt', 362.7, '2005-06-20', 2, 1);
INSERT INTO `book_info` VALUES (601, 'XVQA book', 'Carmen Cox', '赤道几内亚', '108800', 'Navicat authorizes you to make                    ', 'Luo Zhiyuan', 719.2, '2012-01-16', 1, 1);
INSERT INTO `book_info` VALUES (602, 'EOJP book', 'Andrea Hernandez', '苏丹', '101904', 'Navicat Monitor can be installed                  ', 'Tsui Sze Kwan', 644.48, '2014-03-02', 5, 1);
INSERT INTO `book_info` VALUES (603, 'ALMC book', 'Emma Alexander', '卢森堡', '109056', 'The reason why a great man is great               ', 'Miyazaki Sara', 170.95, '2002-08-09', 2, 1);
INSERT INTO `book_info` VALUES (604, 'ZGUC book', 'Robert Garcia', '坦桑尼亚联合共和国', '104921', 'Anyone who has ever made anything                 ', 'Maruyama Akina', 566.9, '2014-03-17', 3, 0);
INSERT INTO `book_info` VALUES (605, 'WUSB book', 'Justin Myers', '索马里', '107450', 'The repository database can be                    ', 'Yung Wing Fat', 521.29, '2020-03-27', 3, 1);
INSERT INTO `book_info` VALUES (606, 'IJEM book', 'Christopher Palmer', '瑞典', '101826', 'To get a secure connection, the                   ', 'Xue Yunxi', 865.27, '2001-10-07', 5, 1);
INSERT INTO `book_info` VALUES (607, 'SMUT book', 'Francis Rodriguez', '拉脱维亚', '100583', 'The Main Window consists of several               ', 'Kono Momoe', 130.31, '2019-10-09', 3, 0);
INSERT INTO `book_info` VALUES (608, 'UBAQ book', 'Howard Phillips', '马里', '103080', 'How we spend our days is, of course,              ', 'Cho Chi Ming', 583.96, '2022-05-25', 5, 0);
INSERT INTO `book_info` VALUES (609, 'PPYB book', 'Frances Sanchez', '西班牙', '100771', 'Always keep your eyes open. Keep                  ', 'Adam Marshall', 511.71, '2017-02-21', 2, 0);
INSERT INTO `book_info` VALUES (610, 'FYPO book', 'Jamie Peterson', '巴基斯坦', '109594', 'The Information Pane shows the                    ', 'Morita Hazuki', 59.1, '2015-12-27', 4, 1);
INSERT INTO `book_info` VALUES (611, 'LMWQ book', 'Connie Garza', '博茨瓦纳', '101221', 'In other words, Navicat provides                  ', 'Denise Silva', 947.68, '2011-03-11', 3, 0);
INSERT INTO `book_info` VALUES (612, 'SAJA book', 'Francis Aguilar', '圣露西亚', '106827', 'All the Navicat Cloud objects are                 ', 'Miu Ting Fung', 696.61, '2018-11-23', 1, 1);
INSERT INTO `book_info` VALUES (613, 'TCAH book', 'Kimberly Edwards', '埃斯瓦蒂尼', '106208', 'Secure SHell (SSH) is a program                   ', 'Tang Sau Man', 746.44, '2008-11-30', 1, 0);
INSERT INTO `book_info` VALUES (614, 'YSGA book', 'Carlos Hicks', '巴巴多斯', '100288', 'All the Navicat Cloud objects are                 ', 'Tong Tin Wing', 876.82, '2011-02-01', 4, 0);
INSERT INTO `book_info` VALUES (615, 'XLBV book', 'Anita Gomez', '奈及利亚', '104690', 'If the Show objects under schema                  ', 'Nomura Akina', 187.85, '2005-07-14', 3, 1);
INSERT INTO `book_info` VALUES (616, 'CSTU book', 'Aaron Castro', '赞比亚', '106762', 'Navicat Cloud provides a cloud                    ', 'Johnny Morgan', 906.33, '2014-01-05', 1, 0);
INSERT INTO `book_info` VALUES (617, 'VMWB book', 'Marjorie Lee', '阿尔巴尼亚', '101165', 'To open a query using an external                 ', 'Duan Ziyi', 214.43, '2011-07-28', 2, 0);
INSERT INTO `book_info` VALUES (618, 'XMXK book', 'Kelly Castillo', '图瓦卢', '107952', 'Export Wizard allows you to export                ', 'Cheung Wing Kuen', 480.63, '2019-09-08', 2, 0);
INSERT INTO `book_info` VALUES (619, 'GFVJ book', 'Diane Barnes', '北马其顿', '106488', 'Sometimes you win, sometimes you learn.', 'Hasegawa Mai', 874.82, '2002-09-18', 4, 0);
INSERT INTO `book_info` VALUES (620, 'ZANT book', 'Gladys Dixon', '萨尔瓦多', '108385', 'It can also manage cloud databases                ', 'Fujiwara Aoshi', 339.34, '2000-09-10', 4, 1);
INSERT INTO `book_info` VALUES (621, 'CWXX book', 'Timothy Gutierrez', '塞拉利昂', '101228', 'All the Navicat Cloud objects are                 ', 'Nomura Yuto', 672.26, '2002-08-26', 4, 0);
INSERT INTO `book_info` VALUES (622, 'OAMT book', 'Catherine Parker', '博茨瓦纳', '100796', 'The reason why a great man is great               ', 'Chan Sze Kwan', 265.35, '2012-10-28', 2, 0);
INSERT INTO `book_info` VALUES (623, 'AHQK book', 'Judy Ford', '利比亚', '109714', 'If it scares you, it might be a good thing to try.', 'Ho Sze Kwan', 784.83, '2000-06-24', 4, 0);
INSERT INTO `book_info` VALUES (624, 'VWKN book', 'Christina Jackson', '哥伦比亚', '108521', 'After logged in the Navicat Cloud                 ', 'Wu Xiaoming', 329.68, '2021-03-24', 3, 1);
INSERT INTO `book_info` VALUES (625, 'JPZL book', 'Clarence Evans', '安哥拉', '108354', 'It is used while your ISPs do not                 ', 'Martin Cruz', 398.66, '2020-02-03', 4, 0);
INSERT INTO `book_info` VALUES (626, 'NNMK book', 'Peggy Harrison', '黑山共和国', '109888', 'All journeys have secret destinations             ', 'Mok Cho Yee', 473.93, '2009-08-10', 1, 0);
INSERT INTO `book_info` VALUES (627, 'DVBP book', 'Carmen Ward', '索马里', '104509', 'How we spend our days is, of course,              ', 'Gu Lan', 570.99, '2001-08-31', 2, 1);
INSERT INTO `book_info` VALUES (628, 'NSCG book', 'Kyle Allen', '密克罗尼西亚（联邦国）', '100180', 'The reason why a great man is great               ', 'Gao Xiaoming', 937.13, '2016-05-21', 2, 0);
INSERT INTO `book_info` VALUES (629, 'QKFN book', 'Shirley Bennett', '意大利', '109108', 'Flexible settings enable you to                   ', 'Lau On Kay', 382.23, '2004-02-13', 4, 0);
INSERT INTO `book_info` VALUES (630, 'KMTI book', 'Michael Baker', '科特迪瓦', '104497', 'If the Show objects under schema                  ', 'Ito Ryota', 949.08, '2007-05-16', 4, 1);
INSERT INTO `book_info` VALUES (631, 'YUYD book', 'Mark Sanchez', '荷兰', '107217', 'Navicat provides powerful tools                   ', 'Arimura Hikaru', 163.76, '2020-06-10', 5, 1);
INSERT INTO `book_info` VALUES (632, 'KZEM book', 'Victor Fox', '圣马力诺', '104311', 'Genius is an infinite capacity for taking pains.', 'Carrie Garcia', 269.91, '2003-02-24', 2, 1);
INSERT INTO `book_info` VALUES (633, 'IBMJ book', 'Philip Porter', '佛得角', '108994', 'If your Internet Service Provider                 ', 'Lo Tin Lok', 741.16, '2005-02-21', 2, 1);
INSERT INTO `book_info` VALUES (634, 'UCBZ book', 'Adam Boyd', '马里', '102739', 'It can also manage cloud databases                ', 'Wayne Diaz', 304.51, '2012-01-07', 5, 1);
INSERT INTO `book_info` VALUES (635, 'YKBZ book', 'Barry Mason', '土耳其', '109219', 'Navicat Cloud could not connect                   ', 'Lam Kwok Ming', 68.23, '2012-03-26', 5, 0);
INSERT INTO `book_info` VALUES (636, 'JQNA book', 'Bobby Mason', '马耳他', '106943', 'You will succeed because most people are lazy.', 'Tse Sze Kwan', 842.02, '2006-02-25', 4, 1);
INSERT INTO `book_info` VALUES (637, 'GSWN book', 'Jack Mendoza', '圣基茨和尼维斯', '102403', 'In the middle of winter I at last                 ', 'Yamada Itsuki', 850.91, '2011-03-17', 3, 1);
INSERT INTO `book_info` VALUES (638, 'JIGN book', 'Carrie Baker', '加蓬', '106319', 'To clear or reload various internal               ', 'Zhu Lu', 259.97, '2001-10-29', 2, 1);
INSERT INTO `book_info` VALUES (639, 'CXEK book', 'Jimmy Price', '卢森堡', '104484', 'Navicat Cloud provides a cloud                    ', 'Nishimura Takuya', 582.35, '2019-02-19', 2, 1);
INSERT INTO `book_info` VALUES (640, 'FSHL book', 'Julia Mendez', '佐治亚州', '106163', 'With its well-designed Graphical                  ', 'Florence Brooks', 472.35, '2014-10-05', 2, 1);
INSERT INTO `book_info` VALUES (641, 'SJHC book', 'Joanne Wells', '阿曼', '100484', 'The On Startup feature allows you                 ', 'Patrick Meyer', 575.83, '2008-06-30', 1, 0);
INSERT INTO `book_info` VALUES (642, 'NKEQ book', 'Benjamin Castro', '阿塞拜疆', '109387', 'There is no way to happiness. Happiness           ', 'Lam Hiu Tung', 691.89, '2002-10-19', 2, 1);
INSERT INTO `book_info` VALUES (643, 'OVXP book', 'Philip Smith', '斐济', '103440', 'Navicat allows you to transfer                    ', 'Deng Xiuying', 217.79, '2020-12-19', 1, 0);
INSERT INTO `book_info` VALUES (644, 'IARS book', 'Stanley Long', '圣马力诺', '104638', 'Success consists of going from                    ', 'Kong Zhiyuan', 13.51, '2017-07-26', 5, 0);
INSERT INTO `book_info` VALUES (645, 'RASW book', 'Wanda Hill', '俄罗斯联邦', '102544', 'The first step is as good as half over.           ', 'Abe Sakura', 371.04, '2001-03-22', 4, 1);
INSERT INTO `book_info` VALUES (646, 'DRDY book', 'Mark Morales', '巴布亚新几内亚', '105955', 'The On Startup feature allows you                 ', 'Wu Zhiyuan', 426.96, '2013-07-10', 2, 1);
INSERT INTO `book_info` VALUES (647, 'XHZB book', 'Carl Taylor', '尼日尔', '100845', 'Navicat Monitor requires a repository             ', 'Matsui Hikaru', 674.13, '2008-02-19', 3, 0);
INSERT INTO `book_info` VALUES (648, 'XGJI book', 'Betty Collins', '拉脱维亚', '102194', 'I may not have gone where I intended              ', 'Meng Zhiyuan', 372.39, '2005-04-03', 1, 1);
INSERT INTO `book_info` VALUES (649, 'ZNMX book', 'Bobby Patel', '几内亚', '107248', 'SSH serves to prevent such vulnerabilities        ', 'Betty Ellis', 525.56, '2013-07-22', 2, 0);
INSERT INTO `book_info` VALUES (650, 'EQXP book', 'Emma Payne', '圣文森特和格林纳丁斯', '105622', 'It provides strong authentication                 ', 'Sato Riku', 968.31, '2006-11-27', 2, 0);
INSERT INTO `book_info` VALUES (651, 'GRIJ book', 'Leonard Lopez', '萨摩亚', '105051', 'If your Internet Service Provider                 ', 'Thelma Ward', 744.53, '2004-10-18', 1, 0);
INSERT INTO `book_info` VALUES (652, 'OOAH book', 'Julie Tran', '汤加', '100382', 'Remember that failure is an event, not a person.', 'Takahashi Ryota', 325.7, '2001-08-22', 4, 1);
INSERT INTO `book_info` VALUES (653, 'HTGR book', 'Anna Green', '博茨瓦纳', '105624', 'You cannot save people, you can just love them.', 'Lu Yuning', 509.25, '2013-02-02', 4, 1);
INSERT INTO `book_info` VALUES (654, 'STJZ book', 'Dale Powell', '萨摩亚', '106692', 'Navicat Monitor can be installed                  ', 'Hui Wai Man', 4.75, '2014-08-10', 3, 1);
INSERT INTO `book_info` VALUES (655, 'XOMB book', 'Carl Cox', '巴西', '105836', 'Difficult circumstances serve as                  ', 'Yuen Kwok Yin', 378.7, '2012-07-07', 4, 1);
INSERT INTO `book_info` VALUES (656, 'SRCW book', 'Eugene Porter', '尼日尔', '107173', 'After comparing data, the window                  ', 'Suzuki Sara', 335.34, '2015-09-04', 3, 0);
INSERT INTO `book_info` VALUES (657, 'SEDT book', 'Robin Cooper', '厄瓜多尔', '101518', 'Export Wizard allows you to export                ', 'Chang Yunxi', 91.65, '2006-06-09', 5, 0);
INSERT INTO `book_info` VALUES (658, 'GGKW book', 'Craig Freeman', '吉布地', '102686', 'After logged in the Navicat Cloud                 ', 'Barbara Robinson', 788.68, '2019-02-25', 4, 1);
INSERT INTO `book_info` VALUES (659, 'ZRER book', 'Chad Sullivan', '古巴', '100223', 'Navicat allows you to transfer                    ', 'Jia Zhennan', 438.86, '2020-06-25', 3, 0);
INSERT INTO `book_info` VALUES (660, 'ZFJA book', 'Sandra Simpson', '马耳他', '103715', 'Navicat Monitor can be installed                  ', 'Yam Wing Kuen', 142.82, '2003-12-09', 2, 1);
INSERT INTO `book_info` VALUES (661, 'DMQI book', 'Joshua Freeman', '斯洛伐克', '109975', 'The past has no power over the present moment.', 'Brian Thompson', 98.58, '2016-08-19', 4, 1);
INSERT INTO `book_info` VALUES (662, 'WFLV book', 'Victor Wagner', '不丹', '107115', 'Navicat Monitor is a safe, simple                 ', 'Yamazaki Hikaru', 399.37, '2006-08-14', 5, 1);
INSERT INTO `book_info` VALUES (663, 'EIAQ book', 'Virginia Mcdonald', '卡塔尔', '106093', 'You cannot save people, you can just love them.   ', 'Walter Hicks', 158.68, '2011-06-14', 2, 0);
INSERT INTO `book_info` VALUES (664, 'WFZU book', 'Rhonda Black', '贝宁', '100007', 'Difficult circumstances serve as                  ', 'Shimizu Miu', 379.4, '2008-03-10', 4, 0);
INSERT INTO `book_info` VALUES (665, 'SJNS book', 'Todd Graham', '汤加', '107370', 'After logged in the Navicat Cloud                 ', 'Saito Mio', 875.66, '2021-11-16', 4, 0);
INSERT INTO `book_info` VALUES (666, 'CKJZ book', 'Mario Wood', '阿根廷', '102398', 'Optimism is the one quality more                  ', 'April Martinez', 221.9, '2001-02-25', 4, 1);
INSERT INTO `book_info` VALUES (667, 'VNUF book', 'Edna Burns', '波兰', '109442', 'Always keep your eyes open. Keep                  ', 'Hsuan Wing Kuen', 539.52, '2018-04-07', 2, 0);
INSERT INTO `book_info` VALUES (668, 'CDEJ book', 'Katherine Cox', '多哥', '105149', 'Flexible settings enable you to                   ', 'Ren Xiaoming', 139.07, '2006-12-14', 3, 1);
INSERT INTO `book_info` VALUES (669, 'XXKT book', 'Randall Patel', '挪威', '101307', 'Instead of wondering when your                    ', 'Ma Xiuying', 79.23, '2007-09-26', 5, 1);
INSERT INTO `book_info` VALUES (670, 'EVYG book', 'Nicholas Garza', '塞尔维亚', '102679', 'Genius is an infinite capacity for taking pains.', 'Wang Zhennan', 247.93, '2016-06-20', 3, 0);
INSERT INTO `book_info` VALUES (671, 'JACR book', 'Bobby Phillips', '印度尼西亚', '102545', 'Remember that failure is an event, not a person.', 'Hayashi Daisuke', 858.92, '2003-08-19', 4, 0);
INSERT INTO `book_info` VALUES (672, 'IFML book', 'Jacqueline Kim', '伯利兹', '103308', 'Navicat Monitor requires a repository             ', 'Tanaka Kaito', 722.78, '2011-06-06', 3, 0);
INSERT INTO `book_info` VALUES (673, 'IFFQ book', 'Jimmy Ford', '喀麦隆', '100356', 'Navicat authorizes you to make                    ', 'Nicholas Black', 446, '2000-08-13', 5, 0);
INSERT INTO `book_info` VALUES (674, 'IMKS book', 'Kyle Williams', '阿拉伯联合酋长国', '109395', 'Creativity is intelligence having fun.            ', 'Hirano Mitsuki', 890.41, '2011-07-24', 5, 1);
INSERT INTO `book_info` VALUES (675, 'XYYS book', 'Arthur Gomez', '多米尼加', '109059', 'If it scares you, it might be a good thing to try.', 'Meng Ziyi', 233.92, '2021-12-26', 3, 1);
INSERT INTO `book_info` VALUES (676, 'AVVL book', 'Diana Chavez', '吉尔吉斯斯坦', '100661', 'Success consists of going from                    ', 'Ishida Ikki', 470.76, '2018-06-11', 2, 1);
INSERT INTO `book_info` VALUES (677, 'DVEM book', 'Curtis Crawford', '马绍尔群岛', '107205', 'Always keep your eyes open. Keep                  ', 'Fujii Hikaru', 46.36, '2014-07-05', 3, 1);
INSERT INTO `book_info` VALUES (678, 'TSIU book', 'Melissa Aguilar', '埃塞俄比亚', '108043', 'The reason why a great man is great               ', 'Marilyn Evans', 587.65, '2003-08-14', 3, 1);
INSERT INTO `book_info` VALUES (679, 'IADW book', 'Irene Porter', '沙特阿拉伯', '105076', 'Navicat provides powerful tools                   ', 'Jeffery White', 437.33, '2020-11-10', 1, 1);
INSERT INTO `book_info` VALUES (680, 'XSPC book', 'Gladys Stone', '乌兹别克斯坦', '103807', 'To successfully establish a new                   ', 'Elizabeth Kelley', 274.22, '2004-03-28', 2, 1);
INSERT INTO `book_info` VALUES (681, 'LKDX book', 'Earl Stewart', '緬甸', '104896', 'The repository database can be                    ', 'Hou Shihan', 299.12, '2010-02-16', 3, 0);
INSERT INTO `book_info` VALUES (682, 'KLPP book', 'Monica Diaz', '赞比亚', '105993', 'Navicat provides a wide range advanced            ', 'Qin Xiaoming', 817.7, '2019-10-13', 3, 1);
INSERT INTO `book_info` VALUES (683, 'CMSV book', 'Sara Ryan', '毛里塔尼亚', '107472', 'You will succeed because most people are lazy.', 'Ren Zitao', 41.96, '2011-12-31', 3, 1);
INSERT INTO `book_info` VALUES (684, 'SPYE book', 'Florence Soto', '克罗地亚', '106847', 'All the Navicat Cloud objects are                 ', 'Bernard Davis', 306.38, '2015-07-19', 3, 0);
INSERT INTO `book_info` VALUES (685, 'YQFC book', 'Kathryn Gonzalez', '布基纳法索', '103318', 'Flexible settings enable you to                   ', 'Dai Ziyi', 637.54, '2011-10-13', 2, 1);
INSERT INTO `book_info` VALUES (686, 'APHZ book', 'Virginia Chavez', '莫桑比克', '109769', 'The Main Window consists of several               ', 'Pamela Foster', 885.89, '2006-12-17', 2, 0);
INSERT INTO `book_info` VALUES (687, 'PRDE book', 'Wanda Coleman', '利比里亚', '102367', 'SSH serves to prevent such vulnerabilities        ', 'Shen Jiehong', 629.96, '2008-07-23', 4, 1);
INSERT INTO `book_info` VALUES (688, 'VYEW book', 'Antonio Jones', '科特迪瓦', '103201', 'It is used while your ISPs do not                 ', 'Nathan Kim', 696.14, '2009-09-11', 1, 1);
INSERT INTO `book_info` VALUES (689, 'MCWM book', 'Patrick Alvarez', '东帝汶', '105637', 'In other words, Navicat provides                  ', 'Nakayama Sara', 172.25, '2005-12-17', 2, 0);
INSERT INTO `book_info` VALUES (690, 'MTFW book', 'Chad Ryan', '印度尼西亚', '102303', 'The Synchronize to Database function              ', 'Cho Ho Yin', 762.73, '2001-08-05', 5, 0);
INSERT INTO `book_info` VALUES (691, 'KQUM book', 'Brian Romero', '几内亚比绍', '109440', 'If your Internet Service Provider                 ', 'Sugawara Rin', 518.58, '2000-01-24', 3, 0);
INSERT INTO `book_info` VALUES (692, 'EXKI book', 'Donald Bailey', '埃斯瓦蒂尼', '103111', 'It wasn’t raining when Noah built the ark.', 'Xia Zitao', 224.86, '2018-07-03', 4, 0);
INSERT INTO `book_info` VALUES (693, 'UUZL book', 'Bradley Castro', '海地', '102527', 'To successfully establish a new                   ', 'Kikuchi Ikki', 197.54, '2006-11-05', 5, 0);
INSERT INTO `book_info` VALUES (694, 'DMSF book', 'Esther Richardson', '土库曼斯坦', '103443', 'I will greet this day with love in my heart.', 'Miura Aoshi', 265.95, '2002-05-04', 4, 1);
INSERT INTO `book_info` VALUES (695, 'WJZV book', 'Travis Griffin', '美国', '100177', 'The Main Window consists of several               ', 'Wong Sze Kwan', 997.42, '2017-11-20', 1, 1);
INSERT INTO `book_info` VALUES (696, 'EKJJ book', 'Gerald Mendez', '塞内加尔', '106037', 'It provides strong authentication                 ', 'Chic Suk Yee', 67.59, '2011-04-25', 3, 0);
INSERT INTO `book_info` VALUES (697, 'BGNT book', 'Doris Tucker', '厄立特里亚', '107055', 'How we spend our days is, of course,              ', 'Albert Bailey', 74.99, '2015-06-26', 4, 1);
INSERT INTO `book_info` VALUES (698, 'MXGO book', 'Kenneth Collins', '埃塞俄比亚', '106412', 'To successfully establish a new                   ', 'Yamazaki Sakura', 461.39, '2018-03-12', 4, 1);
INSERT INTO `book_info` VALUES (699, 'TFAA book', 'Robert Mendez', '汤加', '105635', 'With its well-designed Graphical                  ', 'Yokoyama Takuya', 667.62, '2019-12-09', 3, 0);
INSERT INTO `book_info` VALUES (700, 'CAEQ book', 'Stephen Anderson', '乍得', '102208', 'A man’s best friends are his ten fingers.', 'Jeffrey Gonzales', 527.76, '2009-08-11', 3, 0);
INSERT INTO `book_info` VALUES (701, 'LEYH book', 'Jacqueline Murray', '斯洛伐克', '101679', 'Navicat Monitor is a safe, simple                 ', 'Matsui Hana', 359.45, '2009-01-20', 4, 1);
INSERT INTO `book_info` VALUES (702, 'MWUY book', 'Donna Meyer', '巴拉圭', '100639', 'The Information Pane shows the                    ', 'Joe Edwards', 885.51, '2021-04-28', 3, 1);
INSERT INTO `book_info` VALUES (703, 'QKFF book', 'Mildred Kelly', '东帝汶', '104076', 'Navicat Monitor can be installed                  ', 'Yin Ziyi', 598.97, '2002-05-18', 4, 1);
INSERT INTO `book_info` VALUES (704, 'TSXI book', 'Lawrence Rose', '卢森堡', '101456', 'Sometimes you win, sometimes you learn.', 'Qian Shihan', 666.34, '2012-05-23', 3, 1);
INSERT INTO `book_info` VALUES (705, 'XREY book', 'Albert Mitchell', '密克罗尼西亚（联邦国）', '102793', 'I will greet this day with love in my heart.', 'Joan Murray', 767.47, '2003-03-07', 2, 0);
INSERT INTO `book_info` VALUES (706, 'MQGE book', 'Carolyn Anderson', '安道尔', '106632', 'Flexible settings enable you to                   ', 'Shing Ho Yin', 200.28, '2020-08-05', 1, 0);
INSERT INTO `book_info` VALUES (707, 'MTEH book', 'Angela Taylor', '帛硫', '109974', 'Navicat allows you to transfer                    ', 'Yamazaki Yuito', 339.83, '2004-01-09', 3, 1);
INSERT INTO `book_info` VALUES (708, 'JHYF book', 'Mildred Ferguson', '南苏丹', '100133', 'Navicat Data Modeler is a powerful                ', 'Siu Ka Ming', 494.88, '2001-04-25', 2, 1);
INSERT INTO `book_info` VALUES (709, 'FEVI book', 'Gloria Nelson', '毛里求斯', '100338', 'Navicat authorizes you to make                    ', 'Tse Kar Yan', 990.56, '2015-04-14', 3, 1);
INSERT INTO `book_info` VALUES (710, 'CTEW book', 'Brenda Aguilar', '南苏丹', '109251', 'The Information Pane shows the                    ', 'Carrie Allen', 272.25, '2005-05-14', 2, 0);
INSERT INTO `book_info` VALUES (711, 'NYPK book', 'Anna Ellis', '索马里', '102477', 'The Information Pane shows the                    ', 'Takagi Ikki', 343.14, '2012-08-10', 4, 0);
INSERT INTO `book_info` VALUES (712, 'NLKD book', 'Danielle Palmer', '塞内加尔', '105626', 'In a Telnet session, all communications,          ', 'Lucille Gonzalez', 223.75, '2010-12-28', 4, 0);
INSERT INTO `book_info` VALUES (713, 'FEAN book', 'Tony Gutierrez', '阿根廷', '108449', 'The Main Window consists of several               ', 'Jeremy Murphy', 490.31, '2014-11-13', 3, 1);
INSERT INTO `book_info` VALUES (714, 'QJVZ book', 'Jonathan Gonzales', '安道尔', '108038', 'You must be the change you wish                   ', 'Heung Wing Sze', 214.98, '2003-02-16', 4, 1);
INSERT INTO `book_info` VALUES (715, 'LCAB book', 'Don Hayes', '刚果', '108671', 'In the Objects tab, you can use                   ', 'Tao Ka Ling', 65.02, '2011-11-23', 3, 1);
INSERT INTO `book_info` VALUES (716, 'FPDA book', 'Rita Ferguson', '爱沙尼亚', '103280', 'It collects process metrics such                  ', 'Paula Rice', 198.6, '2002-01-18', 5, 1);
INSERT INTO `book_info` VALUES (717, 'IZBK book', 'Eleanor Stewart', '爱尔兰', '101971', 'To get a secure connection, the                   ', 'Yung Ming', 485.39, '2002-09-20', 2, 0);
INSERT INTO `book_info` VALUES (718, 'FDSU book', 'Robert Herrera', '摩洛哥', '102179', 'You must be the change you wish                   ', 'Li Anqi', 395.21, '2011-02-28', 5, 1);
INSERT INTO `book_info` VALUES (719, 'MMNB book', 'Amanda Aguilar', '约旦', '106808', 'Navicat Cloud could not connect                   ', 'Ku Ming', 998.24, '2009-04-17', 5, 1);
INSERT INTO `book_info` VALUES (720, 'ROCM book', 'Philip Payne', '葡萄牙', '107989', 'If the Show objects under schema                  ', 'Lu Ziyi', 352.27, '2017-09-28', 2, 0);
INSERT INTO `book_info` VALUES (721, 'HYVF book', 'Gary Munoz', '巴西', '102413', 'Navicat Cloud provides a cloud                    ', 'Kao Siu Wai', 471.44, '2000-06-24', 3, 0);
INSERT INTO `book_info` VALUES (722, 'EZRK book', 'Carolyn Murray', '印度尼西亚', '101814', 'The Navigation pane employs tree                  ', 'Julie Castro', 36.34, '2003-09-08', 1, 1);
INSERT INTO `book_info` VALUES (723, 'IJWI book', 'Carmen Jones', '阿拉伯叙利亚共和国', '104162', 'Sometimes you win, sometimes you learn.', 'Eddie Porter', 309.3, '2021-09-28', 2, 1);
INSERT INTO `book_info` VALUES (724, 'MJLV book', 'Philip Russell', '多米尼加', '100091', 'Secure SHell (SSH) is a program                   ', 'Tina Bryant', 644.1, '2003-08-21', 3, 1);
INSERT INTO `book_info` VALUES (725, 'JSZO book', 'Virginia Clark', '巴拉圭', '103534', 'Navicat provides a wide range advanced            ', 'Kaneko Yuito', 113.76, '2011-06-28', 3, 1);
INSERT INTO `book_info` VALUES (726, 'HHRS book', 'Diane Hicks', '美国', '102132', 'To connect to a database or schema,               ', 'Tong Siu Wai', 533.37, '2007-05-05', 3, 1);
INSERT INTO `book_info` VALUES (727, 'KZAN book', 'Phyllis Jenkins', '摩纳哥', '101712', 'A query is used to extract data                   ', 'Hsuan Wai Lam', 92.18, '2018-03-25', 2, 1);
INSERT INTO `book_info` VALUES (728, 'VRMU book', 'Randy Scott', '加纳', '105670', 'A man is not old until regrets                    ', 'Shing Ka Fai', 1.35, '2015-09-28', 2, 0);
INSERT INTO `book_info` VALUES (729, 'FSRF book', 'Jack Bailey', '秘鲁', '100031', 'The On Startup feature allows you                 ', 'Miyazaki Mai', 355.49, '2010-07-08', 4, 0);
INSERT INTO `book_info` VALUES (730, 'OGMN book', 'Randall Henry', '克罗地亚', '103970', 'You can select any connections,                   ', 'Wang Zhiyuan', 534.35, '2003-01-11', 3, 1);
INSERT INTO `book_info` VALUES (731, 'JAAQ book', 'Shirley Jordan', '委内瑞拉（玻利瓦尔共和国）', '104365', 'Navicat authorizes you to make                    ', 'Matsuda Yota', 975.12, '2008-05-31', 4, 1);
INSERT INTO `book_info` VALUES (732, 'KYNC book', 'Kevin Wood', '厄瓜多尔', '104777', 'The Main Window consists of several               ', 'Shi Zhiyuan', 4.82, '2019-12-20', 1, 1);
INSERT INTO `book_info` VALUES (733, 'FYSZ book', 'Timothy Boyd', '巴基斯坦', '107902', 'It collects process metrics such                  ', 'Zhu Yuning', 985.36, '2004-08-07', 2, 1);
INSERT INTO `book_info` VALUES (734, 'ZHBZ book', 'Pamela Gonzales', '英国', '106409', 'If opportunity doesn’t knock, build a door.', 'Duan Yunxi', 367.72, '2018-03-27', 3, 0);
INSERT INTO `book_info` VALUES (735, 'FKQX book', 'Lillian Lewis', '波斯尼亚和黑塞哥维那', '109527', 'There is no way to happiness. Happiness           ', 'Esther Garcia', 802.84, '2002-03-20', 2, 1);
INSERT INTO `book_info` VALUES (736, 'RVOE book', 'Sarah Dunn', '巴布亚新几内亚', '105405', 'The repository database can be                    ', 'Joe Reynolds', 778.49, '2018-08-20', 3, 1);
INSERT INTO `book_info` VALUES (737, 'FFHS book', 'Steven Flores', '约旦', '100647', 'Navicat Monitor is a safe, simple                 ', 'Shen Yuning', 199.28, '2012-09-01', 2, 0);
INSERT INTO `book_info` VALUES (738, 'FULI book', 'Diane Fisher', '哈萨克斯坦', '101854', 'Instead of wondering when your                    ', 'Nakamura Ren', 966.22, '2004-07-03', 2, 1);
INSERT INTO `book_info` VALUES (739, 'OFME book', 'Nancy Meyer', '特立尼达和多巴哥', '100813', 'It collects process metrics such                  ', 'Scott Dixon', 178.4, '2011-05-02', 5, 1);
INSERT INTO `book_info` VALUES (740, 'HUXT book', 'Mary Long', '阿拉伯联合酋长国', '105876', 'It collects process metrics such                  ', 'Miyazaki Hina', 441.09, '2011-10-16', 5, 1);
INSERT INTO `book_info` VALUES (741, 'YASY book', 'Paul Turner', '伊朗（伊斯兰共和国）', '107209', 'To start working with your server                 ', 'Tang Xiaoming', 685.17, '2012-02-09', 4, 0);
INSERT INTO `book_info` VALUES (742, 'OESI book', 'Ryan Kelly', '俄罗斯联邦', '100729', 'Difficult circumstances serve as                  ', 'Ng Ka Fai', 146.72, '2003-07-08', 2, 0);
INSERT INTO `book_info` VALUES (743, 'FGEE book', 'Jose White', '瑙鲁', '109129', 'The Information Pane shows the                    ', 'Lui Ching Wan', 630.14, '2005-03-20', 2, 0);
INSERT INTO `book_info` VALUES (744, 'PAVW book', 'Kathleen Kim', '斐济', '100985', 'It is used while your ISPs do not                 ', 'Lai Hok Yau', 82.06, '2000-06-06', 2, 0);
INSERT INTO `book_info` VALUES (745, 'MAMH book', 'Luis Ramirez', '南苏丹', '106735', 'A man is not old until regrets                    ', 'Shao Jialun', 628.33, '2020-05-21', 5, 0);
INSERT INTO `book_info` VALUES (746, 'WZTZ book', 'Edward Wright', '阿富汗', '100407', 'It is used while your ISPs do not                 ', 'Miura Daichi', 968.72, '2020-08-02', 5, 0);
INSERT INTO `book_info` VALUES (747, 'ZEQO book', 'Douglas Carter', '委内瑞拉（玻利瓦尔共和国）', '103681', 'To start working with your server                 ', 'Ogawa Daisuke', 872.61, '2020-03-25', 3, 1);
INSERT INTO `book_info` VALUES (748, 'EQFW book', 'Brian White', '格林纳达', '103369', 'In other words, Navicat provides                  ', 'Zhou Rui', 714.4, '2011-11-11', 3, 0);
INSERT INTO `book_info` VALUES (749, 'YGZN book', 'Ellen Perry', '西班牙', '101478', 'To clear or reload various internal               ', 'Du Xiaoming', 185.87, '2008-06-25', 4, 1);
INSERT INTO `book_info` VALUES (750, 'OWEP book', 'Timothy Murray', '几内亚', '106385', 'In a Telnet session, all communications,          ', 'Choi Kwok Wing', 475.65, '2021-01-20', 4, 1);
INSERT INTO `book_info` VALUES (751, 'AVWS book', 'Harold Coleman', '冰岛', '102318', 'A query is used to extract data                   ', 'Nakajima Sakura', 310.81, '2006-03-05', 3, 1);
INSERT INTO `book_info` VALUES (752, 'FANS book', 'Sheila Butler', '约旦', '107196', 'Navicat Data Modeler enables you                  ', 'Lok Fat', 489.15, '2018-03-27', 3, 0);
INSERT INTO `book_info` VALUES (753, 'IEZX book', 'Edwin Reyes', '布基纳法索', '103401', 'Sometimes you win, sometimes you learn.           ', 'Mui Chiu Wai', 577.35, '2011-07-06', 4, 1);
INSERT INTO `book_info` VALUES (754, 'OFGO book', 'Christopher Young', '亚美尼亚', '103523', 'A comfort zone is a beautiful place,              ', 'He Xiaoming', 753.35, '2017-11-23', 3, 0);
INSERT INTO `book_info` VALUES (755, 'KEHD book', 'Barbara Scott', '厄立特里亚', '107562', 'It collects process metrics such                  ', 'Joshua Reynolds', 939.77, '2006-12-25', 2, 1);
INSERT INTO `book_info` VALUES (756, 'IIGQ book', 'Stephen James', '厄立特里亚', '101806', 'I destroy my enemies when I make them my friends.', 'Saito Nanami', 158.1, '2021-03-05', 2, 1);
INSERT INTO `book_info` VALUES (757, 'DYJW book', 'Adam Tran', '美国', '100493', 'The past has no power over the present moment.', 'Dai Wing Fat', 956.49, '2004-07-20', 3, 1);
INSERT INTO `book_info` VALUES (758, 'KTXU book', 'Matthew Mendoza', '美国', '104586', 'Actually it is just in an idea                    ', 'Harry Scott', 818.19, '2012-09-15', 2, 1);
INSERT INTO `book_info` VALUES (759, 'IWAM book', 'Lucille Hicks', '瑙鲁', '109337', 'Navicat Data Modeler enables you                  ', 'Joanne Miller', 42.01, '2006-03-01', 4, 1);
INSERT INTO `book_info` VALUES (760, 'QPHL book', 'Sandra Owens', '格林纳达', '103605', 'If the plan doesn’t work, change                ', 'Jiang Zitao', 478.28, '2007-05-01', 1, 1);
INSERT INTO `book_info` VALUES (761, 'PZYK book', 'Anna Sanchez', '澳大利亚', '102961', 'How we spend our days is, of course,              ', 'Li Lan', 716.87, '2002-05-08', 2, 1);
INSERT INTO `book_info` VALUES (762, 'WXQQ book', 'Gregory Hernandez', '大韩民国', '100003', 'The first step is as good as half over.', 'Pak Hiu Tung', 282.84, '2020-11-07', 2, 0);
INSERT INTO `book_info` VALUES (763, 'KLJS book', 'Micheal Henry', '文莱达鲁萨兰国', '103732', 'Champions keep playing until they get it right.', 'Huang Anqi', 517.72, '2017-11-28', 2, 0);
INSERT INTO `book_info` VALUES (764, 'GWGL book', 'Kenneth Bryant', '海地', '106816', 'Navicat Cloud could not connect                   ', 'Iwasaki Rin', 488.24, '2008-03-01', 5, 1);
INSERT INTO `book_info` VALUES (765, 'YAJE book', 'Virginia Gibson', '罗马尼亚', '102421', 'In other words, Navicat provides                  ', 'Maria Wallace', 849.65, '2005-03-14', 3, 1);
INSERT INTO `book_info` VALUES (766, 'HEZT book', 'Don Cook', '马拉维', '100900', 'Champions keep playing until they get it right.', 'Chang Shihan', 205.32, '2013-10-29', 5, 1);
INSERT INTO `book_info` VALUES (767, 'FCJH book', 'Jesus Black', '爱沙尼亚', '107736', 'The Information Pane shows the                    ', 'Fujiwara Ren', 724.3, '2010-11-30', 1, 1);
INSERT INTO `book_info` VALUES (768, 'QOVD book', 'Peter Rose', '罗马尼亚', '109836', 'Navicat Cloud could not connect                   ', 'Jeffery Baker', 364.88, '2020-01-06', 5, 1);
INSERT INTO `book_info` VALUES (769, 'GMTE book', 'Leonard Patel', '英国', '105368', 'Anyone who has ever made anything                 ', 'Cao Jiehong', 429.43, '2006-03-26', 5, 0);
INSERT INTO `book_info` VALUES (770, 'KJYW book', 'Tony Lopez', '斐济', '105110', 'In other words, Navicat provides                  ', 'Kenneth Wright', 473.24, '2001-08-17', 4, 0);
INSERT INTO `book_info` VALUES (771, 'TZOM book', 'Ann West', '柬埔寨', '106659', 'Typically, it is employed as an                   ', 'Yamashita Yota', 601.81, '2022-02-18', 3, 1);
INSERT INTO `book_info` VALUES (772, 'ACRH book', 'Chad Gonzales', '墨西哥', '107614', 'The Main Window consists of several               ', 'Lam Ka Ming', 940.64, '2011-05-24', 4, 1);
INSERT INTO `book_info` VALUES (773, 'WNMN book', 'Crystal Gomez', '圣马力诺', '107034', 'All the Navicat Cloud objects are                 ', 'Shirley Walker', 443.04, '2017-11-16', 2, 0);
INSERT INTO `book_info` VALUES (774, 'FGIO book', 'Gary Morris', '斯里兰卡', '103521', 'Creativity is intelligence having fun.', 'Murata Yuto', 992.33, '2012-12-06', 1, 0);
INSERT INTO `book_info` VALUES (775, 'KYUP book', 'Nicholas Kennedy', '阿根廷', '109511', 'What you get by achieving your                    ', 'Yuen Fu Shing', 996.44, '2017-04-29', 5, 0);
INSERT INTO `book_info` VALUES (776, 'QMTW book', 'Emily Coleman', '纳米比亚', '102439', 'In the Objects tab, you can use                   ', 'Ho Ka Fai', 616.91, '2002-09-04', 2, 0);
INSERT INTO `book_info` VALUES (777, 'HKHT book', 'Marie Soto', '圣多美和普林西比', '103178', 'Difficult circumstances serve as                  ', 'Mori Kazuma', 711.84, '2010-05-25', 1, 0);
INSERT INTO `book_info` VALUES (778, 'ZVES book', 'Linda Watson', '斐济', '108807', 'It collects process metrics such                  ', 'Gary Fox', 791.87, '2009-02-04', 5, 1);
INSERT INTO `book_info` VALUES (779, 'UZSW book', 'Judith Lee', '埃及', '103756', 'I will greet this day with love in my heart.', 'Han Ho Yin', 637.06, '2015-01-10', 3, 1);
INSERT INTO `book_info` VALUES (780, 'FFPE book', 'Lee Warren', '哥斯达黎加', '108439', 'There is no way to happiness. Happiness           ', 'Ma Fu Shing', 278.41, '2011-02-25', 4, 1);
INSERT INTO `book_info` VALUES (781, 'BQBB book', 'Walter Ruiz', '塞浦路斯', '101802', 'Import Wizard allows you to import                ', 'Karen Davis', 238.71, '2018-01-18', 3, 1);
INSERT INTO `book_info` VALUES (782, 'ECHC book', 'Craig Mendez', '塞尔维亚', '103572', 'If the plan doesn’t work, change                ', 'Saito Mai', 187.79, '2014-10-09', 2, 1);
INSERT INTO `book_info` VALUES (783, 'BBPI book', 'Jeremy Campbell', '安道尔', '102334', 'Champions keep playing until they get it right.', 'Ng Chung Yin', 321.75, '2012-06-19', 3, 0);
INSERT INTO `book_info` VALUES (784, 'RNQM book', 'Mark Henry', '伯利兹', '105514', 'Navicat Cloud provides a cloud                    ', 'Karen Garcia', 151.79, '2021-02-10', 2, 1);
INSERT INTO `book_info` VALUES (785, 'XTXR book', 'Hazel Black', '巴林', '104954', 'The Synchronize to Database function              ', 'Qin Jialun', 269.67, '2009-03-19', 2, 0);
INSERT INTO `book_info` VALUES (786, 'UGER book', 'Shirley Brown', '多米尼加', '104217', 'Actually it is just in an idea                    ', 'Sheila Scott', 963.23, '2017-02-08', 3, 0);
INSERT INTO `book_info` VALUES (787, 'EEGW book', 'Shawn Wells', '肯尼亚', '101559', 'Navicat Cloud could not connect                   ', 'Xue Jiehong', 298.05, '2008-06-06', 2, 1);
INSERT INTO `book_info` VALUES (788, 'YCNZ book', 'Mario Evans', '朝鲜民主主义人民共和国', '109786', 'To clear or reload various internal               ', 'Lu Xiaoming', 136.17, '2011-06-13', 4, 1);
INSERT INTO `book_info` VALUES (789, 'OHJS book', 'Eugene Dunn', '哥伦比亚', '106017', 'The first step is as good as half over.', 'Gladys Ross', 281.53, '2009-07-30', 4, 1);
INSERT INTO `book_info` VALUES (790, 'DQLJ book', 'Ronald Campbell', '立陶宛', '108877', 'If you wait, all that happens is you get older.', 'Debbie Alvarez', 919.07, '2015-06-30', 2, 1);
INSERT INTO `book_info` VALUES (791, 'DYON book', 'Amy Brooks', '尼泊尔', '109379', 'To successfully establish a new                   ', 'Xue Jialun', 384.64, '2010-12-13', 4, 1);
INSERT INTO `book_info` VALUES (792, 'XUTT book', 'Ethel Black', '斯洛文尼亚', '109503', 'To open a query using an external                 ', 'April Stone', 12.2, '2000-10-30', 2, 1);
INSERT INTO `book_info` VALUES (793, 'RUPT book', 'Jimmy Torres', '巴拉圭', '102335', 'The past has no power over the present moment.', 'Albert Cox', 822.34, '2019-10-10', 3, 1);
INSERT INTO `book_info` VALUES (794, 'XSML book', 'Dawn Boyd', '以色列', '106936', 'Navicat Cloud provides a cloud                    ', 'Siu Kwok Yin', 781.01, '2020-10-02', 2, 1);
INSERT INTO `book_info` VALUES (795, 'HFWX book', 'Randy Mendez', '尼加拉瓜', '100745', 'Always keep your eyes open. Keep                  ', 'Aoki Hina', 733.1, '2009-02-13', 2, 1);
INSERT INTO `book_info` VALUES (796, 'RIKQ book', 'Nicole Cook', '冈比亚', '102810', 'Navicat 15 has added support for                  ', 'Heather Simmons', 448.84, '2003-05-27', 4, 0);
INSERT INTO `book_info` VALUES (797, 'XLSN book', 'Jennifer Fernandez', '摩纳哥', '103116', 'The past has no power over the present moment.', 'Wang Jialun', 130.84, '2022-05-31', 3, 0);
INSERT INTO `book_info` VALUES (798, 'KQWO book', 'Julia Martin', '古巴', '104915', 'All journeys have secret destinations             ', 'Shao Zitao', 786.13, '2010-12-11', 1, 1);
INSERT INTO `book_info` VALUES (799, 'NLML book', 'Jean Gomez', '摩洛哥', '107481', 'Anyone who has ever made anything                 ', 'Peter Patel', 379.97, '2019-01-18', 2, 1);
INSERT INTO `book_info` VALUES (800, 'KYNO book', 'Rodney Young', '斐济', '100502', 'You cannot save people, you can just love them.', 'Choi Kar Yan', 997.21, '2012-08-04', 2, 0);
INSERT INTO `book_info` VALUES (801, 'SSEK book', 'Crystal Evans', '列支敦士登', '106747', 'I will greet this day with love in my heart.', 'Lucille Lee', 899.59, '2011-03-15', 3, 0);
INSERT INTO `book_info` VALUES (802, 'NVZG book', 'Stanley Castillo', '罗马尼亚', '101544', 'Navicat 15 has added support for                  ', 'Shimizu Daichi', 54.11, '2012-10-21', 1, 1);
INSERT INTO `book_info` VALUES (803, 'ICAP book', 'Matthew Brooks', '黎巴嫩', '105336', 'Instead of wondering when your                    ', 'Nicole Bailey', 637.09, '2012-07-22', 4, 0);
INSERT INTO `book_info` VALUES (804, 'UMEQ book', 'Joshua Rice', '芬兰', '103996', 'All the Navicat Cloud objects are                 ', 'Yung Tin Lok', 172.61, '2009-06-30', 2, 0);
INSERT INTO `book_info` VALUES (805, 'OCJE book', 'Lucille Payne', '萨摩亚', '106396', 'Navicat 15 has added support for                  ', 'Yu Ziyi', 850.63, '2021-01-29', 4, 0);
INSERT INTO `book_info` VALUES (806, 'TKIS book', 'Heather Morris', '多哥', '101044', 'A man is not old until regrets                    ', 'Kobayashi Ren', 606.06, '2020-08-18', 4, 1);
INSERT INTO `book_info` VALUES (807, 'UTKD book', 'Louis Evans', '亚美尼亚', '103654', 'A man’s best friends are his ten fingers.', 'Jeremy Herrera', 744.54, '2011-08-31', 3, 0);
INSERT INTO `book_info` VALUES (808, 'POXB book', 'Patricia Guzman', '也门', '100105', 'If your Internet Service Provider                 ', 'Yin Jiehong', 786.82, '2020-08-12', 1, 0);
INSERT INTO `book_info` VALUES (809, 'GTEO book', 'William Scott', '科威特', '109101', 'Optimism is the one quality more                  ', 'Kikuchi Hikaru', 897.34, '2004-03-26', 2, 0);
INSERT INTO `book_info` VALUES (810, 'JWYD book', 'Paula Alexander', '秘鲁', '104806', 'Navicat Data Modeler enables you                  ', 'Fu Xiuying', 154.7, '2000-02-01', 5, 1);
INSERT INTO `book_info` VALUES (811, 'SHVY book', 'Martin Castillo', '巴西', '108200', 'Navicat is a multi-connections                    ', 'Hara Ryota', 740.63, '2004-09-18', 5, 1);
INSERT INTO `book_info` VALUES (812, 'PRAD book', 'Scott Young', '黑山共和国', '100095', 'Flexible settings enable you to                   ', 'Otsuka Hazuki', 915.86, '2016-01-14', 1, 1);
INSERT INTO `book_info` VALUES (813, 'FPIV book', 'Clifford Ramirez', '比利时', '103472', 'The past has no power over the present moment.', 'Inoue Nanami', 675.53, '2013-07-16', 4, 0);
INSERT INTO `book_info` VALUES (814, 'HBMS book', 'Richard Ortiz', '萨尔瓦多', '109633', 'If your Internet Service Provider                 ', 'Ichikawa Minato', 292.75, '2017-11-09', 3, 0);
INSERT INTO `book_info` VALUES (815, 'YLOJ book', 'Joseph Mendoza', '波斯尼亚和黑塞哥维那', '100059', 'To connect to a database or schema,               ', 'Yin Wai Man', 907.52, '2009-08-20', 4, 0);
INSERT INTO `book_info` VALUES (816, 'FSIC book', 'Diana Hawkins', '墨西哥', '101821', 'The Navigation pane employs tree                  ', 'Ogawa Seiko', 81.32, '2005-11-24', 3, 1);
INSERT INTO `book_info` VALUES (817, 'TJBF book', 'Anne Murphy', '苏丹', '108114', 'Difficult circumstances serve as                  ', 'Chow Chiu Wai', 960.84, '2016-04-29', 4, 0);
INSERT INTO `book_info` VALUES (818, 'YRBG book', 'Miguel Allen', '吉布地', '100001', 'I may not have gone where I intended              ', 'Xiao Lu', 826.99, '2017-02-23', 3, 1);
INSERT INTO `book_info` VALUES (819, 'ODZC book', 'Valerie Ross', '立陶宛', '104714', 'I will greet this day with love in my heart.', 'Wei Xiuying', 989.25, '2014-07-06', 4, 1);
INSERT INTO `book_info` VALUES (820, 'OFCI book', 'Wendy Ramirez', '科威特', '109921', 'Instead of wondering when your                    ', 'Angela Walker', 516.26, '2002-07-31', 2, 0);
INSERT INTO `book_info` VALUES (821, 'TGHV book', 'Samuel Williams', '科特迪瓦', '102842', 'To get a secure connection, the                   ', 'Kaneko Tsubasa', 753.77, '2000-09-21', 3, 0);
INSERT INTO `book_info` VALUES (822, 'WEDZ book', 'Evelyn Munoz', '南苏丹', '109537', 'I destroy my enemies when I make them my friends.', 'Qiu Zhiyuan', 653.29, '2005-12-20', 4, 0);
INSERT INTO `book_info` VALUES (823, 'UFXH book', 'Alice Burns', '塔吉克斯坦', '109063', 'To successfully establish a new                   ', 'Han Chun Yu', 816.57, '2017-01-17', 5, 0);
INSERT INTO `book_info` VALUES (824, 'VDDB book', 'Carol Adams', '吉布地', '107035', 'You cannot save people, you can just love them.', 'Marvin Reyes', 315.87, '2004-09-27', 4, 1);
INSERT INTO `book_info` VALUES (825, 'UEVP book', 'Connie Henderson', '利比里亚', '108396', 'Typically, it is employed as an                   ', 'Nicholas Carter', 398.19, '2012-01-09', 5, 0);
INSERT INTO `book_info` VALUES (826, 'SPHL book', 'Jack Henderson', '菲律宾', '109280', 'The Main Window consists of several               ', 'Guo Xiaoming', 628.41, '2009-04-28', 3, 0);
INSERT INTO `book_info` VALUES (827, 'IVRA book', 'Beverly Coleman', '多明尼加共和国', '100862', 'Remember that failure is an event, not a person.', 'Qin Shihan', 32.92, '2016-03-08', 2, 1);
INSERT INTO `book_info` VALUES (828, 'BSWR book', 'Juanita Rodriguez', '伊拉克', '105041', 'If it scares you, it might be a good thing to try.', 'Guo Lan', 401.97, '2011-10-27', 2, 1);
INSERT INTO `book_info` VALUES (829, 'LBLQ book', 'Gloria Bryant', '印度尼西亚', '109652', 'It collects process metrics such                  ', 'Ruby Gardner', 765.8, '2012-10-13', 5, 1);
INSERT INTO `book_info` VALUES (830, 'GKOA book', 'Cindy Watson', '伯利兹', '107506', 'It collects process metrics such                  ', 'Ku Sze Yu', 280.05, '2015-10-25', 3, 1);
INSERT INTO `book_info` VALUES (831, 'AGGF book', 'Carl Castillo', '利比里亚', '104092', 'A query is used to extract data                   ', 'Miguel Mendez', 886, '2002-09-07', 4, 1);
INSERT INTO `book_info` VALUES (832, 'MYOX book', 'Joanne Russell', '巴基斯坦', '104079', 'Actually it is just in an idea                    ', 'Arthur White', 561.01, '2020-04-02', 5, 1);
INSERT INTO `book_info` VALUES (833, 'NDTN book', 'Mike Lee', '刚果民主共和国', '107013', 'Difficult circumstances serve as                  ', 'Qian Ziyi', 600.93, '2004-07-20', 1, 0);
INSERT INTO `book_info` VALUES (834, 'JNXH book', 'Clara Olson', '埃塞俄比亚', '101174', 'All journeys have secret destinations             ', 'Tin Suk Yee', 493.78, '2006-07-20', 3, 0);
INSERT INTO `book_info` VALUES (835, 'SAXM book', 'Sheila Lee', '挪威', '100792', 'Navicat Data Modeler enables you                  ', 'Yin Lan', 817.85, '2010-01-13', 3, 0);
INSERT INTO `book_info` VALUES (836, 'DKLL book', 'Jessica Ruiz', '波斯尼亚和黑塞哥维那', '108876', 'Optimism is the one quality more                  ', 'Samuel Baker', 425.6, '2016-10-13', 3, 0);
INSERT INTO `book_info` VALUES (837, 'HWIP book', 'Hazel Gray', '阿塞拜疆', '107982', 'Success consists of going from                    ', 'Zeng Rui', 288.23, '2007-11-01', 2, 1);
INSERT INTO `book_info` VALUES (838, 'LIJC book', 'John Alexander', '秘鲁', '102454', 'After comparing data, the window                  ', 'Lok Sau Man', 875.04, '2002-05-22', 2, 0);
INSERT INTO `book_info` VALUES (839, 'NNLI book', 'Jacqueline Brooks', '不丹', '105414', 'Actually it is just in an idea                    ', 'Xue Anqi', 797.77, '2008-05-13', 1, 0);
INSERT INTO `book_info` VALUES (840, 'RSNL book', 'Pauline Tran', '所罗门群岛', '106034', 'I may not have gone where I intended              ', 'Gu Xiuying', 882.29, '2016-02-21', 4, 1);
INSERT INTO `book_info` VALUES (841, 'WJDR book', 'Roger Mendoza', '乌克兰', '107117', 'Such sessions are also susceptible                ', 'Li Anqi', 744.36, '2015-02-24', 1, 1);
INSERT INTO `book_info` VALUES (842, 'FYGD book', 'Melissa Kelley', '利比亚', '100479', 'Anyone who has never made a mistake               ', 'Adam Simmons', 115.22, '2019-05-13', 4, 1);
INSERT INTO `book_info` VALUES (843, 'IPAQ book', 'Emma Grant', '印度尼西亚', '104784', 'You will succeed because most people are lazy.', 'Tsui Kar Yan', 368.95, '2015-04-08', 4, 0);
INSERT INTO `book_info` VALUES (844, 'PTVV book', 'Kathleen Hall', '圣基茨和尼维斯', '102849', 'How we spend our days is, of course,              ', 'Yin Kwok Kuen', 626.84, '2014-11-26', 4, 0);
INSERT INTO `book_info` VALUES (845, 'MOYQ book', 'Barry Garza', '拉脱维亚', '103074', 'Navicat 15 has added support for                  ', 'Fung Chieh Lun', 913.43, '2011-10-14', 1, 1);
INSERT INTO `book_info` VALUES (846, 'UDSA book', 'Jeremy Torres', '巴巴多斯', '109835', 'In a Telnet session, all communications,          ', 'Steven Williams', 815.95, '2002-07-23', 2, 0);
INSERT INTO `book_info` VALUES (847, 'VRYH book', 'Earl Martinez', '贝宁', '103164', 'It collects process metrics such                  ', 'Paula Simpson', 757.33, '2015-01-05', 2, 1);
INSERT INTO `book_info` VALUES (848, 'IDLC book', 'Catherine Crawford', '马尔代夫', '105398', 'To successfully establish a new                   ', 'Peggy Gonzalez', 975.2, '2015-01-18', 3, 0);
INSERT INTO `book_info` VALUES (849, 'GNLR book', 'Charlotte Woods', '乌兹别克斯坦', '107598', 'The first step is as good as half over.', 'Heung Ming', 126.19, '2017-03-07', 1, 1);
INSERT INTO `book_info` VALUES (850, 'OYBG book', 'Brandon Stevens', '安哥拉', '104141', 'Secure Sockets Layer(SSL) is a                    ', 'Yam Chung Yin', 419.91, '2004-10-31', 4, 1);
INSERT INTO `book_info` VALUES (851, 'SVXB book', 'Bruce Wright', '黎巴嫩', '107074', 'Navicat allows you to transfer                    ', 'Li Ziyi', 261.96, '2013-03-06', 3, 1);
INSERT INTO `book_info` VALUES (852, 'GNLX book', 'Pauline Wright', '挪威', '104151', 'Secure SHell (SSH) is a program                   ', 'Fu Ziyi', 7.05, '2008-10-27', 2, 1);
INSERT INTO `book_info` VALUES (853, 'CTHI book', 'Bobby Graham', '大韩民国', '106937', 'Navicat authorizes you to make                    ', 'Hui Sau Man', 144.94, '2002-05-14', 4, 0);
INSERT INTO `book_info` VALUES (854, 'IHGL book', 'Allen Richardson', '日本', '101056', 'Navicat Monitor is a safe, simple                 ', 'Lu Anqi', 880.21, '2009-10-31', 2, 0);
INSERT INTO `book_info` VALUES (855, 'YZAH book', 'Richard Guzman', '阿拉伯联合酋长国', '106032', 'Remember that failure is an event, not a person.', 'Koon Suk Yee', 992.07, '2016-02-15', 5, 1);
INSERT INTO `book_info` VALUES (856, 'UCVB book', 'Antonio Vargas', '美国', '107597', 'I destroy my enemies when I make them my friends.', 'Okada Rin', 269.46, '2019-09-01', 3, 1);
INSERT INTO `book_info` VALUES (857, 'JGNA book', 'Mildred Kennedy', '朝鲜民主主义人民共和国', '107283', 'The first step is as good as half over.', 'Yau Ka Keung', 331.41, '2000-01-21', 2, 1);
INSERT INTO `book_info` VALUES (858, 'OYWV book', 'Sylvia Romero', '加拿大', '100118', 'Navicat provides a wide range advanced            ', 'Uchida Nanami', 153.75, '2004-05-18', 1, 0);
INSERT INTO `book_info` VALUES (859, 'XGXF book', 'Eddie Allen', '多明尼加共和国', '107126', 'All the Navicat Cloud objects are                 ', 'Lois Howard', 704.16, '2002-09-30', 4, 0);
INSERT INTO `book_info` VALUES (860, 'YQUW book', 'Carlos Barnes', '墨西哥', '107187', 'It can also manage cloud databases                ', 'Ng Hui Mei', 662.82, '2003-07-21', 1, 1);
INSERT INTO `book_info` VALUES (861, 'FNXV book', 'Kimberly Long', '萨摩亚', '102818', 'It wasn’t raining when Noah built the ark.      ', 'Long Jialun', 45.12, '2010-09-17', 1, 0);
INSERT INTO `book_info` VALUES (862, 'YLZD book', 'Alfred Mendoza', '圣基茨和尼维斯', '103438', 'Creativity is intelligence having fun.', 'Theresa Stephens', 858.67, '2004-01-03', 3, 1);
INSERT INTO `book_info` VALUES (863, 'GUTO book', 'Ricky Herrera', '卢森堡', '107589', 'Navicat Cloud provides a cloud                    ', 'Takeuchi Daichi', 357.56, '2012-08-20', 1, 0);
INSERT INTO `book_info` VALUES (864, 'LTVW book', 'Kyle King', '埃斯瓦蒂尼', '103260', 'To start working with your server                 ', 'Shibata Kasumi', 351.64, '2019-09-20', 3, 0);
INSERT INTO `book_info` VALUES (865, 'NETV book', 'Patrick Torres', '肯尼亚', '102533', 'In a Telnet session, all communications,          ', 'Takeuchi Yuna', 908.87, '2014-06-24', 3, 0);
INSERT INTO `book_info` VALUES (866, 'BLTB book', 'Luis West', '阿尔及利亚', '100261', 'What you get by achieving your                    ', 'Tang Kwok Ming', 80.22, '2018-10-15', 3, 1);
INSERT INTO `book_info` VALUES (867, 'UTYS book', 'Josephine Gomez', '哈萨克斯坦', '104067', 'I destroy my enemies when I make them my friends.', 'Fu Chung Yin', 291.69, '2001-04-24', 5, 0);
INSERT INTO `book_info` VALUES (868, 'FRDO book', 'Steven Stone', '基里巴斯', '101420', 'The Synchronize to Database function              ', 'Marjorie Hall', 818.82, '2004-09-08', 4, 0);
INSERT INTO `book_info` VALUES (869, 'BFIC book', 'Anita Shaw', '安提瓜和巴布达', '105609', 'The past has no power over the present moment.', 'Goto Minato', 530.66, '2017-08-23', 3, 1);
INSERT INTO `book_info` VALUES (870, 'NOLS book', 'Judith Wright', '比利时', '103821', 'HTTP Tunneling is a method for                    ', 'Ono Miu', 904.53, '2021-11-27', 3, 0);
INSERT INTO `book_info` VALUES (871, 'VLLM book', 'Harry Murphy', '安提瓜和巴布达', '101883', 'If opportunity doesn’t knock, build a door.', 'Wan Wing Sze', 137.65, '2014-02-12', 5, 1);
INSERT INTO `book_info` VALUES (872, 'HYNS book', 'Rose Jackson', '斯洛文尼亚', '102406', 'It wasn’t raining when Noah built the ark.', 'Sandra Cole', 58.75, '2012-11-22', 2, 1);
INSERT INTO `book_info` VALUES (873, 'ZNTO book', 'Micheal Clark', '冰岛', '101875', 'A man’s best friends are his ten fingers.', 'Tao Wing Fat', 682.49, '2020-09-17', 3, 1);
INSERT INTO `book_info` VALUES (874, 'CBVZ book', 'Joanne Guzman', '爱尔兰', '101424', 'With its well-designed Graphical                  ', 'Lau Ho Yin', 390.08, '2005-07-20', 2, 0);
INSERT INTO `book_info` VALUES (875, 'TERP book', 'Dawn Payne', '北马其顿', '104821', 'To start working with your server                 ', 'Jennifer Alexander', 507.54, '2007-10-31', 1, 1);
INSERT INTO `book_info` VALUES (876, 'YZSM book', 'Cynthia Peterson', '塞拉利昂', '102239', 'SQL Editor allows you to create                   ', 'Cho Ka Ling', 523.09, '2019-02-20', 5, 0);
INSERT INTO `book_info` VALUES (877, 'EVUO book', 'Louise Evans', '萨摩亚', '107568', 'Typically, it is employed as an                   ', 'Phyllis Gibson', 235.6, '2005-01-17', 2, 0);
INSERT INTO `book_info` VALUES (878, 'HEWE book', 'Roger Vasquez', '波兰', '102827', 'Navicat Cloud could not connect                   ', 'Jesse Herrera', 419.54, '2001-07-23', 1, 1);
INSERT INTO `book_info` VALUES (879, 'JOWY book', 'Dennis Castillo', '斯洛文尼亚', '109021', 'Navicat provides powerful tools                   ', 'Miu Ming Sze', 34.6, '2020-11-22', 4, 0);
INSERT INTO `book_info` VALUES (880, 'ZARQ book', 'Marvin Flores', '古巴', '103797', 'There is no way to happiness. Happiness           ', 'Hui Wing Sze', 571.58, '2015-11-30', 3, 1);
INSERT INTO `book_info` VALUES (881, 'OXZY book', 'Teresa Cruz', '乌拉圭', '101132', 'In a Telnet session, all communications,          ', 'Jiang Zitao', 37.83, '2010-11-20', 3, 0);
INSERT INTO `book_info` VALUES (882, 'UYWM book', 'Jeff Hicks', '塞舌尔', '102906', 'If opportunity doesn’t knock, build a door.', 'Shirley Gordon', 135.66, '2009-10-02', 1, 0);
INSERT INTO `book_info` VALUES (883, 'KXMD book', 'Luis Perez', '萨尔瓦多', '106427', 'SSH serves to prevent such vulnerabilities        ', 'Ronald Mendoza', 584.56, '2010-10-12', 2, 0);
INSERT INTO `book_info` VALUES (884, 'SAMD book', 'Emma Collins', '意大利', '108310', 'Navicat Monitor requires a repository             ', 'Maria Aguilar', 912.3, '2013-01-18', 4, 1);
INSERT INTO `book_info` VALUES (885, 'IZPU book', 'Donald Taylor', '巴哈马', '105091', 'Always keep your eyes open. Keep                  ', 'Wendy Mills', 31.24, '2021-07-31', 3, 1);
INSERT INTO `book_info` VALUES (886, 'HOKR book', 'Gerald Salazar', '阿富汗', '104214', 'Remember that failure is an event, not a person.', 'Mak Tsz Ching', 793.36, '2004-06-06', 2, 1);
INSERT INTO `book_info` VALUES (887, 'XUIP book', 'Kelly Ellis', '多明尼加共和国', '109472', 'The repository database can be                    ', 'Yan Zhiyuan', 275.78, '2005-10-14', 4, 0);
INSERT INTO `book_info` VALUES (888, 'JIVB book', 'Mildred Powell', '马里', '108187', 'You cannot save people, you can just love them.', 'Kojima Yuna', 366.37, '2004-08-04', 3, 1);
INSERT INTO `book_info` VALUES (889, 'FPYF book', 'Scott Watson', '马达加斯加', '101156', 'The Main Window consists of several               ', 'Ricky Gardner', 840.13, '2003-07-04', 2, 1);
INSERT INTO `book_info` VALUES (890, 'MJST book', 'Wanda Nichols', '安提瓜和巴布达', '101094', 'Such sessions are also susceptible                ', 'Gladys Carter', 592.44, '2005-05-25', 1, 0);
INSERT INTO `book_info` VALUES (891, 'WUIC book', 'Stephen Butler', '布基纳法索', '105232', 'The On Startup feature allows you                 ', 'Jesus Gomez', 170.48, '2008-09-09', 4, 0);
INSERT INTO `book_info` VALUES (892, 'HKDE book', 'Victor Clark', '意大利', '100657', 'It provides strong authentication                 ', 'Mori Mai', 810.17, '2019-10-07', 4, 1);
INSERT INTO `book_info` VALUES (893, 'MSMP book', 'Bonnie Alvarez', '挪威', '107543', 'Navicat Cloud provides a cloud                    ', 'Kong Zhennan', 813.52, '2000-05-30', 2, 1);
INSERT INTO `book_info` VALUES (894, 'HPHB book', 'Tammy Kelley', '坦桑尼亚联合共和国', '100741', 'The Information Pane shows the                    ', 'Ito Itsuki', 981.91, '2015-06-08', 3, 1);
INSERT INTO `book_info` VALUES (895, 'ZDSG book', 'Terry Sanchez', '俄罗斯联邦', '109595', 'Navicat allows you to transfer                    ', 'Marcus Price', 856.1, '2000-03-12', 4, 1);
INSERT INTO `book_info` VALUES (896, 'OXOR book', 'Howard Ford', '布基纳法索', '103977', 'The first step is as good as half over.', 'Shimizu Nanami', 436.22, '2001-03-28', 3, 1);
INSERT INTO `book_info` VALUES (897, 'NLPZ book', 'Micheal Crawford', '纳米比亚', '109125', 'I may not have gone where I intended              ', 'Brenda Gonzales', 189.15, '2016-11-23', 5, 1);
INSERT INTO `book_info` VALUES (898, 'XGXY book', 'Stephen Ortiz', '佛得角', '100595', 'Navicat 15 has added support for                  ', 'Lawrence Turner', 446.54, '2013-07-06', 1, 1);
INSERT INTO `book_info` VALUES (899, 'FZHX book', 'Andrew Ortiz', '马来西亚', '105225', 'Actually it is just in an idea                    ', 'Deng Yuning', 528.33, '2007-09-30', 5, 1);
INSERT INTO `book_info` VALUES (900, 'ENOI book', 'Sylvia Taylor', '阿拉伯叙利亚共和国', '105306', 'To open a query using an external                 ', 'Jerry Barnes', 23.95, '2015-10-06', 3, 0);
INSERT INTO `book_info` VALUES (901, 'POBJ book', 'Albert Garcia', '波兰', '103342', 'In the Objects tab, you can use                   ', 'Shirley Collins', 500.88, '2003-04-29', 2, 0);
INSERT INTO `book_info` VALUES (902, 'SHOU book', 'Steve Palmer', '也门', '102835', 'Creativity is intelligence having fun.            ', 'Ng Ho Yin', 993.56, '2012-10-08', 3, 1);
INSERT INTO `book_info` VALUES (903, 'RKLP book', 'Francis Morris', '乌拉圭', '109716', 'There is no way to happiness. Happiness           ', 'Lui Sum Wing', 124.2, '2017-06-11', 2, 0);
INSERT INTO `book_info` VALUES (904, 'OZXD book', 'Lawrence Simmons', '斯里兰卡', '100009', 'SSH serves to prevent such vulnerabilities        ', 'Ueda Nanami', 135.46, '2001-09-18', 2, 0);
INSERT INTO `book_info` VALUES (905, 'QOJG book', 'Joel Ellis', '约旦', '105767', 'A man is not old until regrets                    ', 'Zhong Rui', 806.52, '2018-04-21', 1, 0);
INSERT INTO `book_info` VALUES (906, 'HSJL book', 'Charles Stephens', '尼加拉瓜', '106948', 'Optimism is the one quality more                  ', 'Lu Rui', 376.68, '2016-08-07', 3, 0);
INSERT INTO `book_info` VALUES (907, 'EOZB book', 'Jesse Graham', '多明尼加共和国', '108301', 'After logged in the Navicat Cloud                 ', 'Chu Hui Mei', 351.37, '2020-03-26', 1, 1);
INSERT INTO `book_info` VALUES (908, 'WPPQ book', 'Thomas Simmons', '利比里亚', '106773', 'To open a query using an external                 ', 'Pang On Kay', 387.4, '2000-03-29', 1, 0);
INSERT INTO `book_info` VALUES (909, 'EVKO book', 'Peter Tran', '伯利兹', '106567', 'You will succeed because most people are lazy.    ', 'Maeda Yuito', 136.47, '2010-07-29', 4, 1);
INSERT INTO `book_info` VALUES (910, 'IRPS book', 'Ernest Guzman', '斯洛伐克', '102506', 'Difficult circumstances serve as                  ', 'Earl Russell', 763, '2004-06-23', 1, 0);
INSERT INTO `book_info` VALUES (911, 'ZOEC book', 'Rose Boyd', '越南', '104450', 'If opportunity doesn’t knock, build a door.', 'Choi Hok Yau', 152.98, '2011-09-15', 3, 1);
INSERT INTO `book_info` VALUES (912, 'ENKY book', 'Patrick Holmes', '冰岛', '107136', 'Creativity is intelligence having fun.', 'Billy Allen', 163.74, '2010-05-09', 4, 1);
INSERT INTO `book_info` VALUES (913, 'QXGU book', 'Billy Dunn', '阿尔巴尼亚', '106635', 'All journeys have secret destinations             ', 'Kwong Yun Fat', 520.66, '2011-02-02', 3, 1);
INSERT INTO `book_info` VALUES (914, 'KFGZ book', 'Troy Jenkins', '新加坡', '109017', 'In a Telnet session, all communications,          ', 'Kato Hikari', 697.87, '2016-04-20', 4, 1);
INSERT INTO `book_info` VALUES (915, 'IULB book', 'Carol Morgan', '巴拿马', '107050', 'If you wait, all that happens is you get older.', 'Hung On Kay', 262.74, '2019-09-03', 1, 0);
INSERT INTO `book_info` VALUES (916, 'RYCY book', 'Maria Fox', '圣文森特和格林纳丁斯', '106216', 'Secure SHell (SSH) is a program                   ', 'Nakagawa Mai', 833.08, '2009-02-08', 4, 1);
INSERT INTO `book_info` VALUES (917, 'TKQM book', 'Earl Gordon', '布隆迪', '106651', 'I may not have gone where I intended              ', 'Yan Zhiyuan', 973.25, '2011-05-19', 4, 0);
INSERT INTO `book_info` VALUES (918, 'YEPK book', 'Deborah Jimenez', '大韩民国', '104103', 'All journeys have secret destinations             ', 'Hou Zitao', 651.42, '2020-09-25', 4, 0);
INSERT INTO `book_info` VALUES (919, 'YNDV book', 'Maria Boyd', '卢森堡', '108551', 'There is no way to happiness. Happiness           ', 'Wada Nanami', 729.65, '2003-06-19', 2, 0);
INSERT INTO `book_info` VALUES (920, 'OAUY book', 'Carrie Powell', '波斯尼亚和黑塞哥维那', '100522', 'Remember that failure is an event, not a person.  ', 'Yam Kwok Kuen', 111.69, '2010-10-13', 3, 0);
INSERT INTO `book_info` VALUES (921, 'LQSY book', 'Norma Nelson', '柬埔寨', '109821', 'All journeys have secret destinations             ', 'Qiu Shihan', 238.78, '2020-02-03', 1, 0);
INSERT INTO `book_info` VALUES (922, 'RBUP book', 'Mary Henderson', '佛得角', '107344', 'Creativity is intelligence having fun.            ', 'Gao Lu', 861.39, '2007-01-01', 3, 1);
INSERT INTO `book_info` VALUES (923, 'WRXL book', 'Ralph Adams', '亚美尼亚', '100164', 'Optimism is the one quality more                  ', 'Su Xiuying', 38.84, '2021-08-26', 2, 0);
INSERT INTO `book_info` VALUES (924, 'BYHF book', 'Donna Spencer', '澳大利亚', '107564', 'It provides strong authentication                 ', 'Ito Ikki', 619.3, '2000-10-30', 3, 0);
INSERT INTO `book_info` VALUES (925, 'BHKY book', 'Ronald Sullivan', '泰国', '101991', 'With its well-designed Graphical                  ', 'Koo Fu Shing', 713.98, '2005-08-06', 1, 1);
INSERT INTO `book_info` VALUES (926, 'MMGI book', 'Lee Reyes', '秘鲁', '104981', 'A comfort zone is a beautiful place,              ', 'Jason Wagner', 854.79, '2000-01-30', 1, 0);
INSERT INTO `book_info` VALUES (927, 'AFMN book', 'Ellen Jones', '美国', '105770', 'The Main Window consists of several               ', 'Chang Sum Wing', 741.99, '2020-12-25', 1, 0);
INSERT INTO `book_info` VALUES (928, 'QTGP book', 'Jane Rodriguez', '乌拉圭', '107097', 'Success consists of going from                    ', 'Tang Sum Wing', 706.25, '2016-04-08', 4, 0);
INSERT INTO `book_info` VALUES (929, 'GLIH book', 'Sarah Russell', '圣马力诺', '109325', 'To start working with your server                 ', 'Wu Hiu Tung', 740.98, '2003-12-10', 4, 0);
INSERT INTO `book_info` VALUES (930, 'CPFM book', 'Billy Watson', '卢森堡', '103679', 'I may not have gone where I intended              ', 'Sakamoto Ikki', 731.57, '2014-04-22', 5, 0);
INSERT INTO `book_info` VALUES (931, 'HFHM book', 'Paul Wright', '安提瓜和巴布达', '101939', 'Export Wizard allows you to export                ', 'Maeda Hikari', 627.45, '2007-01-15', 4, 0);
INSERT INTO `book_info` VALUES (932, 'FESF book', 'Thomas Salazar', '土耳其', '105061', 'Monitored servers include MySQL,                  ', 'Lui Fu Shing', 103.64, '2005-12-01', 1, 1);
INSERT INTO `book_info` VALUES (933, 'VVII book', 'Carrie Stone', '莫桑比克', '104569', 'All journeys have secret destinations             ', 'Miyazaki Kaito', 867.14, '2002-03-08', 4, 1);
INSERT INTO `book_info` VALUES (934, 'ZLMP book', 'Frederick Scott', '列支敦士登', '103355', 'To clear or reload various internal               ', 'Takahashi Kaito', 95.73, '2007-05-21', 3, 0);
INSERT INTO `book_info` VALUES (935, 'ZRSX book', 'Fred Scott', '波兰', '100075', 'It collects process metrics such                  ', 'Shimada Yuna', 153.15, '2001-11-01', 5, 1);
INSERT INTO `book_info` VALUES (936, 'HSRK book', 'Deborah Sullivan', '瓦努阿图', '103455', 'After logged in the Navicat Cloud                 ', 'Sakurai Yuito', 888.01, '2012-11-14', 2, 0);
INSERT INTO `book_info` VALUES (937, 'SOLC book', 'Gregory Robertson', '中非共和国', '108687', 'Sometimes you win, sometimes you learn.           ', 'Sheh Wing Fat', 40.05, '2012-08-07', 2, 0);
INSERT INTO `book_info` VALUES (938, 'QMTF book', 'Nicole Cruz', '泰国', '109765', 'The past has no power over the present moment.', 'Jia Ziyi', 263.78, '2000-12-26', 2, 0);
INSERT INTO `book_info` VALUES (939, 'UEWU book', 'Charlotte Johnson', '吉尔吉斯斯坦', '109364', 'You cannot save people, you can just love them.', 'Maeda Minato', 84.87, '2006-03-19', 4, 0);
INSERT INTO `book_info` VALUES (940, 'VQLT book', 'Alice Ramirez', '克罗地亚', '103793', 'Anyone who has ever made anything                 ', 'Leroy Jones', 536.57, '2012-07-13', 2, 1);
INSERT INTO `book_info` VALUES (941, 'WVXB book', 'Eugene Evans', '海地', '105864', 'A man is not old until regrets                    ', 'Kong Xiaoming', 141.71, '2013-08-06', 4, 1);
INSERT INTO `book_info` VALUES (942, 'HCKV book', 'Roy Jimenez', '土库曼斯坦', '105208', 'A man is not old until regrets                    ', 'Lok Hiu Tung', 970.68, '2015-04-30', 3, 0);
INSERT INTO `book_info` VALUES (943, 'YMBC book', 'Jacob Stewart', '土库曼斯坦', '108350', 'In the middle of winter I at last                 ', 'Stephanie Lee', 723.72, '2021-06-28', 2, 0);
INSERT INTO `book_info` VALUES (944, 'AIUF book', 'Steve Moore', '乌兹别克斯坦', '107635', 'You must be the change you wish                   ', 'Tin Ka Fai', 394.94, '2000-06-01', 2, 0);
INSERT INTO `book_info` VALUES (945, 'IZDK book', 'Kenneth Porter', '以色列', '101014', 'To connect to a database or schema,               ', 'Ren Zitao', 75.87, '2001-10-12', 4, 0);
INSERT INTO `book_info` VALUES (946, 'NYSF book', 'Diane Harrison', '索马里', '108946', 'Remember that failure is an event, not a person.', 'Han Zhennan', 409.88, '2008-01-17', 4, 0);
INSERT INTO `book_info` VALUES (947, 'MLRN book', 'Keith Myers', '俄罗斯联邦', '104582', 'A comfort zone is a beautiful place,              ', 'Wei Jiehong', 859.44, '2006-03-02', 5, 1);
INSERT INTO `book_info` VALUES (948, 'RWVA book', 'Benjamin Chen', '阿曼', '105277', 'To get a secure connection, the                   ', 'Peter Torres', 929.68, '2000-10-24', 2, 0);
INSERT INTO `book_info` VALUES (949, 'DMJH book', 'Ryan Phillips', '罗马尼亚', '108582', 'It can also manage cloud databases                ', 'Chu Ka Keung', 857.79, '2011-08-17', 2, 1);
INSERT INTO `book_info` VALUES (950, 'YLYX book', 'John Kim', '阿尔及利亚', '100876', 'Navicat Monitor is a safe, simple                 ', 'Okamoto Yota', 580.38, '2013-04-06', 4, 1);
INSERT INTO `book_info` VALUES (951, 'LKBA book', 'Sara Burns', '伯利兹', '104749', 'To open a query using an external                 ', 'Hara Shino', 57.07, '2007-04-14', 5, 0);
INSERT INTO `book_info` VALUES (952, 'YJBY book', 'Edward Fox', '土库曼斯坦', '101430', 'I destroy my enemies when I make them my friends.', 'Tamura Momoe', 293.46, '2012-08-25', 3, 0);
INSERT INTO `book_info` VALUES (953, 'JMNO book', 'Rachel Stone', '突尼斯', '105775', 'With its well-designed Graphical                  ', 'Kato Yamato', 852.36, '2009-08-24', 4, 1);
INSERT INTO `book_info` VALUES (954, 'NIKO book', 'Carol Sanders', '巴林', '101666', 'You must be the change you wish                   ', 'Miyazaki Yuna', 563.49, '2009-07-07', 3, 1);
INSERT INTO `book_info` VALUES (955, 'UPSK book', 'Juanita Herrera', '以色列', '100822', 'I destroy my enemies when I make them my friends.', 'Pang Tsz Hin', 469.04, '2005-07-11', 2, 0);
INSERT INTO `book_info` VALUES (956, 'RDUW book', 'Martin Mitchell', '波斯尼亚和黑塞哥维那', '105057', 'In the Objects tab, you can use                   ', 'Yoshida Daisuke', 92.79, '2009-08-29', 1, 0);
INSERT INTO `book_info` VALUES (957, 'ZDAR book', 'Leonard Nguyen', '安哥拉', '102703', 'All the Navicat Cloud objects are                 ', 'Lu Zhennan', 658.37, '2000-09-15', 2, 1);
INSERT INTO `book_info` VALUES (958, 'RTAQ book', 'Debbie Romero', '比利时', '104705', 'Secure Sockets Layer(SSL) is a                    ', 'Zhang Yunxi', 972.62, '2005-03-13', 2, 1);
INSERT INTO `book_info` VALUES (959, 'BQWL book', 'Dennis Hunt', '加纳', '102173', 'Anyone who has ever made anything                 ', 'Shimada Sara', 620.97, '2006-10-20', 4, 0);
INSERT INTO `book_info` VALUES (960, 'HGSL book', 'Alan Medina', '巴拿马', '104178', 'Import Wizard allows you to import                ', 'Fang Lan', 211.66, '2017-02-27', 3, 0);
INSERT INTO `book_info` VALUES (961, 'NLWK book', 'Willie Moreno', '柬埔寨', '108817', 'Navicat provides powerful tools                   ', 'Tsang Kwok Ming', 388.23, '2019-03-02', 2, 1);
INSERT INTO `book_info` VALUES (962, 'DRAT book', 'Troy Silva', '朝鲜民主主义人民共和国', '108604', 'Optimism is the one quality more                  ', 'Bernard Alvarez', 798.06, '2018-04-25', 4, 1);
INSERT INTO `book_info` VALUES (963, 'ALHJ book', 'George Gonzales', '佐治亚州', '109572', 'I will greet this day with love in my heart.', 'Bryan Cooper', 132.58, '2009-04-06', 4, 1);
INSERT INTO `book_info` VALUES (964, 'KQUS book', 'Eva Torres', '柬埔寨', '103855', 'SQL Editor allows you to create                   ', 'Yeung Tin Wing', 278.72, '2005-09-15', 2, 1);
INSERT INTO `book_info` VALUES (965, 'OLEV book', 'Kathleen Ramirez', '加蓬', '108697', 'Navicat provides powerful tools                   ', 'Guo Ziyi', 444.02, '2007-03-17', 4, 1);
INSERT INTO `book_info` VALUES (966, 'PFYT book', 'Emily Butler', '古巴', '100136', 'Always keep your eyes open. Keep                  ', 'Koyama Airi', 248.67, '2003-05-21', 2, 0);
INSERT INTO `book_info` VALUES (967, 'BXTR book', 'Helen Castillo', '约旦', '100459', 'Navicat Monitor can be installed                  ', 'Luo Anqi', 941.52, '2004-11-16', 3, 1);
INSERT INTO `book_info` VALUES (968, 'CTXX book', 'Sherry Morgan', '厄瓜多尔', '100587', 'Navicat Monitor can be installed                  ', 'Bonnie Butler', 990.59, '2004-05-06', 2, 1);
INSERT INTO `book_info` VALUES (969, 'YHUA book', 'Alfred Hamilton', '古巴', '103725', 'Anyone who has ever made anything                 ', 'Kikuchi Momoe', 254.31, '2000-07-26', 2, 0);
INSERT INTO `book_info` VALUES (970, 'AEJI book', 'Michael Lewis', '马尔代夫', '100854', 'Always keep your eyes open. Keep                  ', 'Theresa Long', 418.7, '2001-01-23', 2, 1);
INSERT INTO `book_info` VALUES (971, 'DRSE book', 'Crystal Wallace', '伯利兹', '104997', 'Such sessions are also susceptible                ', 'Leonard Price', 379.85, '2010-03-15', 4, 1);
INSERT INTO `book_info` VALUES (972, 'SACE book', 'Keith Lewis', '大韩民国', '109956', 'Export Wizard allows you to export                ', 'Sakamoto Yota', 414.85, '2003-06-29', 5, 0);
INSERT INTO `book_info` VALUES (973, 'SRGG book', 'Rhonda Butler', '葡萄牙', '103889', 'SSH serves to prevent such vulnerabilities        ', 'Ronald Robertson', 421.43, '2009-02-09', 3, 1);
INSERT INTO `book_info` VALUES (974, 'FOWC book', 'Jack Rose', '哥伦比亚', '104331', 'SQL Editor allows you to create                   ', 'Okamoto Itsuki', 923.9, '2015-12-16', 3, 0);
INSERT INTO `book_info` VALUES (975, 'IRQM book', 'Sharon Edwards', '拉脱维亚', '104354', 'To open a query using an external                 ', 'Sugawara Momoe', 198.73, '2006-11-22', 2, 1);
INSERT INTO `book_info` VALUES (976, 'TJBI book', 'Clara Vasquez', '汤加', '105946', 'What you get by achieving your                    ', 'Yamaguchi Sakura', 260.57, '2009-03-07', 4, 0);
INSERT INTO `book_info` VALUES (977, 'RBNV book', 'Harold Lewis', '澳大利亚', '104857', 'The Information Pane shows the                    ', 'Kaneko Takuya', 81.04, '2001-10-24', 3, 0);
INSERT INTO `book_info` VALUES (978, 'PYSS book', 'Carolyn Aguilar', '津巴布韦', '106185', 'HTTP Tunneling is a method for                    ', 'Kinoshita Aoshi', 407.39, '2010-06-10', 3, 1);
INSERT INTO `book_info` VALUES (979, 'GKRR book', 'Wanda Ryan', '帛硫', '100830', 'To start working with your server                 ', 'Pak Tsz Hin', 500.41, '2015-06-19', 2, 0);
INSERT INTO `book_info` VALUES (980, 'WWCR book', 'Randall Patterson', '也门', '103300', 'After logged in the Navicat Cloud                 ', 'Tan Jiehong', 370.83, '2006-11-07', 4, 1);
INSERT INTO `book_info` VALUES (981, 'NXCA book', 'Glenn Shaw', '博茨瓦纳', '101265', 'You cannot save people, you can just love them.', 'Chu Wai Yee', 224.62, '2014-05-22', 2, 0);
INSERT INTO `book_info` VALUES (982, 'WNEX book', 'Shirley Roberts', '大韩民国', '102492', 'In a Telnet session, all communications,          ', 'Ku Chi Ming', 272.58, '2008-10-28', 2, 1);
INSERT INTO `book_info` VALUES (983, 'YNYU book', 'Jerry Vasquez', '巴林', '102130', 'How we spend our days is, of course,              ', 'Ren Lan', 704.97, '2019-04-26', 1, 0);
INSERT INTO `book_info` VALUES (984, 'CYEH book', 'Laura Gray', '巴拉圭', '103649', 'To successfully establish a new                   ', 'Mui Hok Yau', 903.8, '2009-06-12', 1, 0);
INSERT INTO `book_info` VALUES (985, 'UXPE book', 'Christopher White', '马尔代夫', '109661', 'All journeys have secret destinations             ', 'Nakamura Hikaru', 37.65, '2016-02-01', 3, 1);
INSERT INTO `book_info` VALUES (986, 'XHUO book', 'Sean Smith', '圭亚那', '107780', 'You can select any connections,                   ', 'Nakagawa Mitsuki', 937.16, '2001-04-04', 1, 0);
INSERT INTO `book_info` VALUES (987, 'BWYA book', 'Joyce Sanders', '泰国', '103295', 'Navicat authorizes you to make                    ', 'Morita Ren', 689.24, '2021-04-20', 5, 1);
INSERT INTO `book_info` VALUES (988, 'ZJRM book', 'Shirley Collins', '苏丹', '103555', 'The On Startup feature allows you                 ', 'Fung Lai Yan', 627.96, '2012-03-09', 2, 1);
INSERT INTO `book_info` VALUES (989, 'SUAE book', 'Harry Marshall', '爱沙尼亚', '107460', 'Navicat provides powerful tools                   ', 'Ernest Hill', 395.18, '2007-11-20', 4, 0);
INSERT INTO `book_info` VALUES (990, 'TWIT book', 'Larry Gibson', '圣文森特和格林纳丁斯', '103232', 'Navicat Monitor requires a repository             ', 'Wang Xiuying', 652.38, '2019-01-26', 4, 0);
INSERT INTO `book_info` VALUES (991, 'NMLJ book', 'Juanita Munoz', '马达加斯加', '102485', 'Secure SHell (SSH) is a program                   ', 'Hou Zitao', 929.44, '2004-07-22', 5, 1);
INSERT INTO `book_info` VALUES (992, 'WOSN book', 'Lucille West', '吉布地', '107065', 'I may not have gone where I intended              ', 'Kong Wai Han', 790.9, '2004-06-08', 3, 1);
INSERT INTO `book_info` VALUES (993, 'TQZA book', 'Lee Ortiz', '赞比亚', '108841', 'A man’s best friends are his ten fingers.', 'Miyamoto Daichi', 103.22, '2011-03-11', 4, 1);
INSERT INTO `book_info` VALUES (994, 'MZAN book', 'Kelly Price', '巴林', '100372', 'Navicat provides powerful tools                   ', 'Marie Ryan', 115.01, '2018-02-22', 4, 1);
INSERT INTO `book_info` VALUES (995, 'OTIM book', 'Steven Jordan', '冰岛', '103963', 'It collects process metrics such                  ', 'Donna Clark', 894.31, '2012-08-21', 1, 0);
INSERT INTO `book_info` VALUES (996, 'GPUB book', 'Curtis Washington', '圣露西亚', '104966', 'Navicat provides powerful tools                   ', 'Howard Roberts', 404.87, '2019-05-28', 2, 1);
INSERT INTO `book_info` VALUES (997, 'EXDF book', 'Joel Murphy', '俄罗斯联邦', '106338', 'The Synchronize to Database function              ', 'Anthony Mendez', 278.25, '2000-02-26', 5, 0);
INSERT INTO `book_info` VALUES (998, 'ERFJ book', 'Nancy Miller', '科摩罗', '109627', 'Optimism is the one quality more                  ', 'Wu Sum Wing', 268.13, '2016-07-06', 2, 0);
INSERT INTO `book_info` VALUES (999, 'FUKD book', 'Troy Chen', '日本', '108154', 'Navicat authorizes you to make                    ', 'Phyllis Ellis', 559.79, '2004-11-14', 4, 1);
INSERT INTO `book_info` VALUES (1000, 'KOEJ book', 'Maria Sanchez', '巴林', '100408', 'HTTP Tunneling is a method for                    ', 'Qiu Jialun', 913.8, '2020-08-26', 2, 1);
INSERT INTO `book_info` VALUES (1001, 'ULSO book', 'Edwin Guzman', '佐治亚州', '105707', 'Always keep your eyes open. Keep                  ', 'Harry Sanchez', 111.62, '2009-03-25', 3, 1);
INSERT INTO `book_info` VALUES (1002, 'VOFU book', 'Joshua Soto', '北马其顿', '107688', 'If the Show objects under schema                  ', 'Zou Ziyi', 833.76, '2015-07-05', 3, 1);
INSERT INTO `book_info` VALUES (1003, 'JKDV book', 'Andrea Foster', '捷克共和国', '108605', 'It provides strong authentication                 ', 'Amanda Scott', 502.5, '2010-02-19', 2, 0);
INSERT INTO `book_info` VALUES (1004, 'HKUE book', 'Harold Daniels', '赞比亚', '107066', 'Navicat Cloud could not connect                   ', 'Liang Anqi', 582.85, '2014-11-29', 5, 0);
INSERT INTO `book_info` VALUES (1005, 'UCIJ book', 'Earl Grant', '冰岛', '109534', 'In the Objects tab, you can use                   ', 'Watanabe Riku', 969.01, '2013-12-02', 3, 0);
INSERT INTO `book_info` VALUES (1006, 'VRSN book', 'Danny Green', '突尼斯', '104679', 'Anyone who has ever made anything                 ', 'Rebecca Weaver', 271.18, '2020-12-18', 4, 0);

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bookId` int(11) NULL DEFAULT NULL COMMENT '图书id',
  `readerId` int(11) NULL DEFAULT NULL COMMENT '读者id',
  `lendDate` datetime NULL DEFAULT NULL COMMENT '借书时间',
  `backDate` datetime NULL DEFAULT NULL COMMENT '还书时间',
  `backType` int(11) NULL DEFAULT NULL,
  `exceptRemarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_lend_list_rid`(`readerId`) USING BTREE,
  INDEX `index_lend_list_bid`(`bookId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '借阅记录（谁在何时借走了什么书，并且有没有归还，归还时间多少）' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES (15, 1, 5, '2022-06-04 10:07:31', '2022-06-04 21:09:27', 0, NULL);
INSERT INTO `lend_list` VALUES (36, 2, 6, '2022-06-04 21:48:17', '2022-06-04 21:50:00', 2, NULL);
INSERT INTO `lend_list` VALUES (37, 3, 7, '2022-06-04 21:50:22', '2022-06-04 21:50:32', 3, NULL);
INSERT INTO `lend_list` VALUES (38, 5, 8, '2022-06-05 21:35:35', '2022-06-05 21:35:47', 1, NULL);
INSERT INTO `lend_list` VALUES (39, 6, 9, '2022-06-05 21:42:35', NULL, NULL, NULL);
INSERT INTO `lend_list` VALUES (40, 7, 9, '2022-07-02 20:45:00', NULL, NULL, NULL);
INSERT INTO `lend_list` VALUES (42, 1, 4, '2022-07-02 21:15:03', '2022-07-02 21:17:10', 0, NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `topic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `createDate` datetime NULL DEFAULT NULL COMMENT '公告发布时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_notice_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '公告内部测试1', '这是第一个内容测试啊', 'admin', '2022-06-01 21:35:53');
INSERT INTO `notice` VALUES (2, '公告内部测试2', '这是第二个内容测试啊', 'admin', '2022-06-02 22:38:03');
INSERT INTO `notice` VALUES (3, '公告内部测试3', '这是第三个内容测试啊', 'yx5411', '2022-06-03 06:47:54');
INSERT INTO `notice` VALUES (4, '公告内部测试4', '这是第四个内容测试啊', 'yx5411', '2022-06-04 06:48:01');
INSERT INTO `notice` VALUES (5, '公告内部测试5', '这是第五个内容测试啊', 'xy1221', '2022-06-04 06:49:03');
INSERT INTO `notice` VALUES (6, '公告内部测试6', '这是第六个内容测试啊', 'yx5411', '2022-06-05 07:48:04');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `registerDate` datetime NULL DEFAULT NULL COMMENT '注册日期',
  `readerNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者编号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_reader_id`(`id`) USING BTREE,
  INDEX `index_render_name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '读者信息（包括登录账号密码等）' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES (4, 'Shirley Palmer', 'j7NAcMpyPD', '向岚', '女', '2013-03-14', '珊瑚路325号', '10417461067', 'wdt15@qq.com', '2016-12-03 02:36:39', '8120461076');
INSERT INTO `reader_info` VALUES (5, 'Heather Dunn', 'eSD13iJ13I', '邵震南', '女', '2007-02-05', '坑美十五巷47号', '16956351953', 'd5r03@qq.com', '2021-05-05 09:11:49', '8120767468');
INSERT INTO `reader_info` VALUES (6, 'Helen Long', 'DuilwCHIVG', '高詩涵', '女', '2013-10-18', '罗湖区田贝一路592号', '17845337308', 'inalk@qq.com', '2001-02-23 01:08:11', '8120460547');
INSERT INTO `reader_info` VALUES (7, 'Mark Gutierrez', 'mGkebWEURl', '邱杰宏', '男', '2003-11-11', '罗湖区蔡屋围深南东路890号', '11466423934', '4qspk@qq.com', '2015-01-09 23:21:43', '8120954731');
INSERT INTO `reader_info` VALUES (8, 'Bruce Griffin', 'xHh0aLxh8o', '姜睿', '男', '2008-06-25', '東城区東直門內大街468号', '17722997549', 'cm7qj@qq.com', '2006-08-11 06:44:06', '8120763005');
INSERT INTO `reader_info` VALUES (9, 'Shirley Perez', 'OBdz9iRZ59', '龚杰宏', '女', '2012-03-15', '罗湖区田贝一路651号', '13953492593', 'wmo7k@qq.com', '2007-12-11 11:38:31', '8120151864');
INSERT INTO `reader_info` VALUES (10, 'Danielle Medina', 'MP6pYGi6M3', '孟震南', '女', '2012-05-02', '罗湖区田贝一路883号', '18178890214', 'klisy@qq.com', '2018-02-09 13:39:52', '8120948351');
INSERT INTO `reader_info` VALUES (11, 'Johnny Daniels', 'P2VgTQaozR', '徐杰宏', '男', '2006-08-15', '延庆区028县道190号', '19340039914', 'le5wb@qq.com', '2018-05-08 13:50:17', '8120645210');
INSERT INTO `reader_info` VALUES (12, 'Dawn Bennett', 'VkQArLhf8E', '史致远', '女', '2005-01-21', '龙岗区布吉镇西环路412号', '14510702576', '1mqju@qq.com', '2003-09-11 01:20:17', '8120920732');
INSERT INTO `reader_info` VALUES (13, 'Earl Davis', 'mqjJNaWbOO', '曾子异', '男', '2018-04-25', '龙岗区布吉镇西环路909号', '16200671714', '44l3t@qq.com', '2018-09-28 13:34:46', '8120391427');
INSERT INTO `reader_info` VALUES (14, 'Johnny Brown', 's3iR2dWQcK', '马秀英', '男', '2013-02-18', '西城区西長安街133号', '18414253494', 'tw4ev@qq.com', '2009-08-22 16:25:26', '8120684623');
INSERT INTO `reader_info` VALUES (15, 'Rachel Robinson', 'wAIATdY2V9', '冯杰宏', '女', '2003-08-26', '西城区西長安街80号', '18547420037', 'f2j1u@qq.com', '2005-02-28 06:57:47', '8120250733');
INSERT INTO `reader_info` VALUES (16, 'Sarah Gardner', 'cvRAnyrI71', '胡秀英', '女', '2022-01-16', '西城区西長安街293号', '18197751492', '0tyxe@qq.com', '2015-04-27 12:40:08', '8120221684');
INSERT INTO `reader_info` VALUES (17, 'Valerie Long', 'yCbIKctjR5', '任云熙', '女', '2007-08-22', '福田区深南大道394号', '14728485968', 'feamw@qq.com', '2008-01-12 07:13:10', '8120108768');
INSERT INTO `reader_info` VALUES (18, 'Samuel Simmons', 'J4ynFj4EGV', '徐杰宏', '男', '2011-10-29', '房山区岳琉路91号', '10204273668', '1g5gq@qq.com', '2017-12-08 12:50:42', '8120151815');
INSERT INTO `reader_info` VALUES (19, 'Teresa Sullivan', 'ztS4mTyUo0', '杨致远', '女', '2018-02-27', '东泰五街461号', '13536153983', '47508@qq.com', '2003-09-08 00:44:05', '8120422619');
INSERT INTO `reader_info` VALUES (20, 'Amanda Mendez', 'dweuBnPYms', '罗云熙', '女', '2018-10-20', '乐丰六路207号', '16722762599', 'lolvh@qq.com', '2005-08-28 05:16:22', '8120823364');
INSERT INTO `reader_info` VALUES (21, 'Michael Herrera', 'PX7LWvCAOZ', '程震南', '男', '2010-10-30', '房山区岳琉路759号', '10361770883', 'l02oz@qq.com', '2005-03-24 05:18:36', '8120004160');
INSERT INTO `reader_info` VALUES (22, 'Barbara Gardner', 'oEIpqsDyci', '邵子异', '女', '2013-04-09', '浦东新区健祥路733号', '19899147285', '2hrpf@qq.com', '2003-08-17 17:10:48', '8120642154');
INSERT INTO `reader_info` VALUES (23, 'Kim Olson', 'OvxKetFu9W', '程晓明', '女', '2000-08-31', '西城区西長安街969号', '14579820214', '9m71t@qq.com', '2012-03-26 15:54:52', '8120154864');

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书分类名称',
  `remarks` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of type_info
-- ----------------------------
INSERT INTO `type_info` VALUES (1, '文学类', '陶冶情操');
INSERT INTO `type_info` VALUES (2, '历史类', '了解历史文化');
INSERT INTO `type_info` VALUES (3, '工学类', '造火箭');
INSERT INTO `type_info` VALUES (4, '法学类', '学习法律');
INSERT INTO `type_info` VALUES (5, '经济学类', '搞经济');
INSERT INTO `type_info` VALUES (6, '统计学类', '学习统计');

SET FOREIGN_KEY_CHECKS = 1;
