-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2018-11-12 09:19:28
-- 服务器版本： 5.7.22
-- PHP 版本： 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- 表的结构 `shop_cart`
--

CREATE TABLE `shop_cart` (
  `cid` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `orders_id` char(18) NOT NULL,
  `gid` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `price` decimal(9,2) NOT NULL COMMENT '购买价格',
  `cnt` int(11) NOT NULL COMMENT '购买数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop_cart`
--

INSERT INTO `shop_cart` (`cid`, `orders_id`, `gid`, `price`, `cnt`) VALUES
(1, '201808251048198944', 24, '2399.00', 2),
(2, '201808251048198944', 78, '158.99', 2),
(3, '201808251054496389', 1, '2899.00', 2),
(4, '201808251054496389', 3, '3499.00', 3),
(5, '201808251109286934', 1, '2899.00', 3),
(6, '201808251112276500', 1, '2899.00', 3),
(7, '201808251112276500', 3, '3499.00', 2),
(8, '201809271620028821', 23, '99.00', 2),
(9, '201810080726491243', 1, '2899.00', 3),
(10, '201810131439278942', 21, '7399.00', 3),
(11, '201810131439278942', 49, '128.00', 3),
(12, '201810141959045019', 23, '99.00', 3),
(13, '201810141959045019', 57, '22.90', 2),
(14, '201810150634176388', 1, '2899.00', 2),
(15, '201810160841473977', 1, '2899.00', 3);

-- --------------------------------------------------------

--
-- 表的结构 `shop_cate`
--

CREATE TABLE `shop_cate` (
  `cid` int(10) UNSIGNED NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `pid` int(10) UNSIGNED DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop_cate`
--

INSERT INTO `shop_cate` (`cid`, `cname`, `pid`, `path`) VALUES
(1, '家用电器', 0, '0,'),
(2, '手机/运营商/数码', 0, '0,'),
(3, '电脑/办公', 0, '0,'),
(4, '家居/家具/家装/厨具', 0, '0,'),
(5, '男装/女装/童装/内衣', 0, '0,'),
(6, '汽车/汽车用品', 0, '0,'),
(7, '母婴/玩具乐器', 0, '0,'),
(8, '食品/酒类/生鲜/特产', 0, '0,'),
(9, '图书/音像/电子书', 0, '0,'),
(10, '礼品鲜花/农资绿植', 0, '0,'),
(11, '美妆个护/宠物', 0, '0,'),
(12, '医药保健/计生情趣', 0, '0,'),
(13, '电视', 1, '0,1,'),
(14, '空调', 1, '0,1,'),
(15, '洗衣机', 1, '0,1,'),
(16, '冰箱', 1, '0,1,'),
(17, '手机通讯', 2, '0,2,'),
(18, '运营商', 2, '0,2,'),
(19, '手机配件', 2, '0,2,'),
(20, '摄影摄像', 2, '0,2,'),
(21, '数码配件', 2, '0,2,'),
(22, '影音娱乐', 2, '0,2,'),
(23, '智能设备', 2, '0,2,'),
(24, '电子教育', 2, '0,2,'),
(25, '电脑整机', 3, '0,3,'),
(26, '电脑配件', 3, '0,3,'),
(27, '外设产品', 3, '0,3,'),
(28, '游戏设备', 3, '0,3,'),
(29, '网络产品', 3, '0,3,'),
(30, '办公设备', 3, '0,3,'),
(31, '文具耗材', 3, '0,3,'),
(32, '厨具', 4, '0,4,'),
(33, '家纺', 4, '0,4,'),
(34, '灯具', 4, '0,4,'),
(35, '家装主材', 4, '0,4,'),
(36, '厨房卫浴', 4, '0,4,'),
(37, '五金电工', 4, '0,4,'),
(38, '女装', 5, '0,5,'),
(39, '男装', 5, '0,5,'),
(40, '内衣', 5, '0,5,'),
(41, '配饰', 5, '0,5,'),
(42, '童装', 5, '0,5,'),
(43, '童鞋', 5, '0,5,'),
(44, '面部护肤', 11, '0,11,'),
(45, '洗发护发', 11, '0,11,'),
(46, '身体护理', 11, '0,11,'),
(47, '口腔护理', 11, '0,11,'),
(48, '女性护理', 11, '0,11,'),
(49, '香水彩妆', 11, '0,11,'),
(50, '清洁用品', 11, '0,11,'),
(51, '宠物生活', 11, '0,11,'),
(52, '宝马', 6, '0,6,'),
(53, '奔驰', 6, '0,6,'),
(54, '沃尔沃', 6, '0,6,'),
(55, '红旗', 6, '0,6,'),
(56, '奥迪', 6, '0,6,'),
(57, '凯迪拉克', 6, '0,6,'),
(58, '斯柯达', 6, '0,6,'),
(59, '吉利', 6, '0,6,'),
(60, '比亚迪', 6, '0,6,'),
(61, '奶粉', 7, '0,7,'),
(62, '营养辅食', 7, '0,7,'),
(63, '尿裤湿巾', 7, '0,7,'),
(64, '喂养用品', 7, '0,7,'),
(65, '妈妈专区', 7, '0,7,'),
(66, '乐器', 7, '0,7,'),
(67, '玩具', 7, '0,7,'),
(68, '新鲜水果', 8, '0,8,'),
(69, '蔬菜蛋品', 8, '0,8,'),
(70, '精选肉类', 8, '0,8,'),
(71, '海鲜水产', 8, '0,8,'),
(72, '冷饮冻食', 8, '0,8,'),
(73, '中外名酒', 8, '0,8,'),
(74, '进口食品', 8, '0,8,'),
(75, '茗茶', 8, '0,8,'),
(76, '少儿读物', 9, '0,9,'),
(77, '教育', 9, '0,9,'),
(78, '文艺', 9, '0,9,'),
(79, '经管励志', 9, '0,9,'),
(80, '人文社科', 9, '0,9,'),
(81, '生活', 9, '0,9,'),
(82, '科技', 9, '0,9,'),
(83, '礼品', 10, '0,10,'),
(84, '种子', 10, '0,10,'),
(85, '农药', 10, '0,10,'),
(86, '肥料', 10, '0,10,'),
(87, '绿植园艺', 10, '0,10,'),
(88, '中西药品', 12, '0,12,'),
(89, '保健器械', 12, '0,12,'),
(90, '护理护具', 12, '0,12,'),
(91, 'PHP网站开发', 94, '0,9,94,'),
(92, 'Go语言实战入门', 94, '0,9,94,'),
(93, 'Python精品教程', 94, '0,9,94,'),
(94, '计算机编程', 9, '0,9,'),
(95, 'Linux课程', 94, '0,9,94,'),
(96, 'Javascript全栈', 94, '0,9,94,'),
(97, '液晶电视', 13, '0,1,13,'),
(98, '其他/定制', 0, '0,'),
(99, '平板电视', 13, '0,1,13,'),
(100, '笔记本', 25, '0,3,25,'),
(101, '游戏本', 25, '0,3,25,'),
(102, '平板电脑', 25, '0,3,25,'),
(103, '平板电脑配件', 25, '0,3,25,'),
(104, '显示器', 26, '0,3,26,'),
(105, '主板', 26, '0,3,26,'),
(106, 'CPU', 26, '0,3,26,'),
(107, '内存', 26, '0,3,26,'),
(108, '机箱', 26, '0,3,26,'),
(109, '电源', 26, '0,3,26,'),
(110, '散热器', 26, '0,3,26,'),
(111, 'SSD固态硬盘', 26, '0,3,26,'),
(112, '鼠标', 27, '0,3,27,'),
(113, '键盘', 27, '0,3,27,'),
(114, '网络仪表仪器', 27, '0,3,27,'),
(115, 'U盘', 27, '0,3,27,'),
(116, '移动硬盘', 27, '0,3,27,'),
(117, '鼠标垫', 27, '0,3,27,'),
(118, '壁挂式', 14, '0,1,14,'),
(119, '柜式', 14, '0,1,14,'),
(120, '一级效能', 14, '0,1,14,'),
(121, '变频空调', 14, '0,1,14,'),
(122, '滚筒式', 15, '0,1,15,'),
(123, '一体化', 15, '0,1,15,'),
(124, '多门', 16, '0,1,16,'),
(125, '对开', 16, '0,1,16,'),
(126, '三开', 16, '0,1,16,'),
(127, '冷柜/冰吧', 16, '0,1,16,'),
(128, '手机', 17, '0,2,17,'),
(129, '游戏手机', 17, '0,2,17,'),
(130, '老人机', 17, '0,2,17,'),
(131, '对讲机', 17, '0,2,17,'),
(132, '以旧换新', 17, '0,2,17,'),
(133, '手机维修', 17, '0,2,17,'),
(134, '合约机', 18, '0,2,18,'),
(135, '选号码', 18, '0,2,18,'),
(136, '固化宽带', 18, '0,2,18,'),
(137, '办套餐', 18, '0,2,18,'),
(138, '手机壳', 19, '0,2,19,'),
(139, '贴膜', 19, '0,2,19,'),
(140, '手机存储卡', 19, '0,2,19,'),
(141, '数据线', 19, '0,2,19,'),
(142, '数码相机', 20, '0,2,20,'),
(143, '单反相机', 20, '0,2,20,'),
(144, '运动相机', 20, '0,2,20,'),
(145, '户外器材', 20, '0,2,20,'),
(146, '游戏机', 28, '0,3,28,'),
(147, '游戏耳机', 28, '0,3,28,'),
(148, '手柄/方向盘', 28, '0,3,28,'),
(149, '游戏软件', 28, '0,3,28,'),
(150, '路由器', 29, '0,3,29,'),
(151, '投影仪', 30, '0,3,30,'),
(152, '打印纸', 31, '0,3,31,'),
(153, '水具酒具', 32, '0,4,32,'),
(154, '烹饪锅具', 32, '0,4,32,'),
(155, '炒锅', 32, '0,4,32,'),
(156, '餐具', 32, '0,4,32,'),
(157, '四件套', 33, '0,4,33,'),
(158, '被子', 33, '0,4,33,'),
(159, '枕巾', 33, '0,4,33,'),
(160, '毛巾浴巾', 33, '0,4,33,'),
(161, '吸顶灯', 34, '0,4,34,'),
(162, '吊灯', 34, '0,4,34,'),
(163, '台灯', 34, '0,4,34,'),
(164, '筒灯射灯', 34, '0,4,34,'),
(165, '当季热卖', 38, '0,5,38,'),
(166, '新品推荐', 38, '0,5,38,'),
(167, '羽绒服', 38, '0,5,38,'),
(168, '连衣裙', 38, '0,5,38,'),
(169, '套装裙', 38, '0,5,38,'),
(170, '长袖连衣裙', 38, '0,5,38,'),
(171, '当季热卖', 39, '0,5,39,'),
(172, '新品推荐', 39, '0,5,39,'),
(173, 'T恤', 39, '0,5,39,'),
(174, '牛仔裤', 39, '0,5,39,'),
(175, '休闲裤', 39, '0,5,39,'),
(176, '衬衫', 39, '0,5,39,'),
(177, '刀剪菜板', 32, '0,4,32,'),
(178, '油漆涂料', 35, '0,4,35,'),
(179, '马桶', 36, '0,4,36,'),
(180, '淋浴花洒', 36, '0,4,36,'),
(181, '电动工具', 37, '0,4,37,'),
(182, '手动工具', 37, '0,4,37,'),
(183, '棉服', 38, '0,5,38,'),
(184, '风衣', 39, '0,5,39,'),
(185, '睡衣', 39, '0,5,39,'),
(186, '男士内裤', 40, '0,5,40,'),
(187, '女士内裤', 40, '0,5,40,'),
(188, '遮阳帽', 41, '0,5,41,'),
(189, '真皮手套', 41, '0,5,41,'),
(190, '外套/大衣', 42, '0,5,42,'),
(191, '毛衣/针织衫', 42, '0,5,42,');

-- --------------------------------------------------------

--
-- 表的结构 `shop_goods`
--

CREATE TABLE `shop_goods` (
  `gid` int(10) UNSIGNED NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `catid` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `salecnt` int(10) UNSIGNED DEFAULT '0',
  `gpic` varchar(100) DEFAULT NULL,
  `gdesc` text,
  `status` int(10) UNSIGNED DEFAULT NULL,
  `create_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop_goods`
--

INSERT INTO `shop_goods` (`gid`, `gname`, `catid`, `price`, `stock`, `salecnt`, `gpic`, `gdesc`, `status`, `create_at`) VALUES
(1, '飞利浦（PHILIPS）55PUF6092/T3 55英寸 二级能效 智慧省电 科技感机身 4K超高清WIFI智能液晶电视（银灰色)', 97, '2899.00', 89, 11, '20180823\\201711210901444464.jpg', '优化画质 身临其境  飞利浦4大画质处理技术 带来高水准的色彩、对比度和清晰度 呈现非凡画质和性能\r\n让每一个画面，都宛如真境', 3, 1511251304),
(2, 'TCL D55A930C 55英寸 HDR超薄4K曲面 64位30核智能液晶电视机（黑色）', 97, '3799.00', 100, 0, '20180823\\201711210908004417.jpg', '整合多个大型视频平台.专为互联网电视打造.', 1, 1511251680),
(3, '小米（MI）小米电视3S 55英寸 HDR 4K超高清超薄金属机身64位智能网络液晶平板电视（L55M5-AA）', 97, '3499.00', 98, 2, '20180823\\201711210909194190.jpg', '9.9mm纤薄金属机身电视机，杜比虚拟环绕声，海量影视内容，支持手机，平板，笔记本无线投屏显示，支持壁挂', 1, 1511251759),
(4, '海尔模卡（MOOKA）U65H3 65英寸 4K安卓智能网络纤薄窄边框UHD高清LED液晶电视（金色）', 97, '4999.00', 100, 0, '20180823\\201711210911111372.jpg', '海尔匠心打造，互联网专属定制，客厅尊贵享受，影院级体验，香槟金高颜值外观！', 1, 1511251871),
(5, 'KKTV U60J 60英寸4K超高清 HDR 64位高性能处理器 人工智能语音液晶平板电视机 康佳出品 黑色', 99, '3599.00', 100, 0, '20180823\\201711210913013272.jpg', '【即刻预约，11.23日领券满减300，成交价3299！11.11价格再现】康佳出品值得信赖！', 1, 1511251981),
(6, '格力（GREE）正1.5匹 变频 品圆 冷暖 壁挂式空调 KFR-35GW/(35592)FNhDa-A3', 118, '3699.00', 100, 0, '20180823\\201711210915029978.jpg', '【3099暖冬狂欢价！23日0:00开抢！感恩回馈！格力送惠！】价格低到嗨翻天！价格难得！抢到即赚到！勿失良机！好评13万+！', 1, 1511252102),
(7, '美的（Midea）大1匹 变频 智弧 冷暖 智能壁挂式空调 KFR-26GW/WDAA3@', 118, '2499.00', 100, 0, '20180823\\201711210916525328.jpg', '【暖冬大惠战】暖心美价，寒冷不怕！想要暖，这边看！全民抗冻总动员，莫让暖风只等闲！', 1, 1511252212),
(8, '奥克斯（AUX）正1.5匹 冷暖 定速 空调挂机(KFR-35GW/HFJ+3)', 119, '1949.00', 100, 0, '20180823\\201711210918405959.jpg', '致力成为基于互联网,智能化的奥克斯家电产业.', 1, 1511252320),
(9, '海尔（Haier) EG8012B39SU1 8公斤变频滚筒洗衣机 京东微联智能APP控制', 122, '2399.00', 100, 0, '20180823\\201711210920329759.jpg', '【海尔钜惠】成交价仅2299元--下单立现！好评4.6万+！整机3年免费保修！智能APP操控', 1, 1511252432),
(10, '小天鹅（LittleSwan）TG80V20WDX 8公斤变频滚筒洗衣机 智能APP控制适用三口之家', 122, '1899.00', 100, 0, '20180823\\201711210922088881.jpg', '爆款滚筒2万+好评，库存有限，先到先得！16种洗涤程序，95度高温筒自洁，一级能效省水省电！详询客服！', 1, 1511252528),
(11, '海尔（Haier）BCD-440WDPG 440升变频风冷无霜法式多门冰箱 干湿分储 三档变温双直开抽屉全空间保鲜 凯岩灰', 124, '5599.00', 100, 0, '20180823\\201711210924159335.jpg', '晒单后咨询海尔客服送价值1288元WMF双耳炖锅，再送3年延保！进口恩布拉科压缩机,好冰箱就要全空间保鲜', 1, 1511252655),
(12, '容声 (Ronshen) BCD-636WD11HPA 636升 对开门冰箱 矢量变频 省电节能 云智能WIFI 电脑控温 风冷无霜大容积', 125, '4799.00', 100, 0, '20180823\\201711210925508782.jpg', '【智享容声 品牌日】畅销智能对开！下单立减600元，到手价仅4199元！一级能效，日耗电仅0.99度！矢量双变频+容E云智能黑科技！', 1, 1511252750),
(13, '荣耀 V9 全网通 高配版 6GB+64GB 魅焰红 移动联通电信4G手机 双卡双待', 128, '2699.00', 100, 0, '20180823\\201711210927221830.jpg', '领券立减200！低至2499！纤薄机身，2K屏，双镜头，强劲芯片，你想要的快~', 1, 1511252842),
(14, '小米5X 全网通 4GB+64GB 玫瑰金 移动联通电信4G手机 双卡双待', 128, '1499.00', 100, 0, '20180823\\201711210929116158.jpg', '购机得小米（MI）小米TDS检测笔+米粉卡（内含100元话费）！5.5”屏幕，轻薄金属机身！光学变焦双摄，拍人更美！', 1, 1511252951),
(15, 'Apple iPhone 8 Plus (A1864) 64GB 银色 移动联通电信4G手机', 128, '6688.00', 100, 0, '20180823\\201711210930389183.jpg', '下单立减289元！成交价6399元！赠碎屏险，半年碎屏换新机！', 1, 1511253038),
(16, '魅族 魅蓝E 3GB+32GB 全网通公开版 月光银 移动联通电信4G手机 双卡双待', 128, '799.00', 100, 0, '20180823\\201711210932201367.jpg', '5.5英寸！500万+1300万像素！', 1, 1511253140),
(17, '三星 Galaxy J3 （J3300）3GB+32GB 雪夜黑 移动联通电信4G手机 双卡双待', 128, '1099.00', 100, 0, '20180823\\201711210933192541.jpg', '5.0英寸屏幕，500+1300万像素，F1.9大光圈，金属机身，指纹解锁，支持NFC，2600mAh电池，支持3卡槽！', 1, 1511253199),
(18, 'OPPO R9sk 全网通4G+64G 双卡双待手机 玫瑰金色', 128, '2399.00', 100, 0, '20180823\\201711210934273199.jpg', '下单送蓝牙音箱、自拍杆、臂包！享6期免息', 1, 1511253267),
(19, 'vivo X9 全网通 4GB+64GB 移动联通电信4G手机 双卡双待 夏日蓝 礼盒版', 128, '1998.00', 100, 0, '20180823\\201711210936195647.jpg', 'X20享12期免息', 1, 1511253379),
(20, '锤子（smartisan） 坚果Pro2 手机 碳黑色（细红线版） 全网通 6+256GB', 128, '3299.00', 100, 0, '20180823\\201711210937359076.jpg', '漂亮的不像实力派.', 1, 1511253455),
(21, ' 联想(Lenovo)拯救者R720 15.6英寸游戏笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050Ti 4G IPS 黑)', 100, '7399.00', 97, 3, '20180823\\201711210947113442.jpg', '【Dota2 游戏利器 指定款拯救者领券立减1000元】【吃鸡利器，4G大显存，Nvme协议Pcie固态硬盘】GTX1050Ti就选拯救者！专业游戏键', 1, 1511254031),
(22, '英特尔（Intel） i7 7700K 酷睿四核 盒装CPU处理器', 106, '2499.00', 100, 0, '20180823\\201711210949075659.jpg', '采用Kabylake架构，LGA 1151接口', 1, 1511254147),
(23, '新盟游戏键盘鼠标套装有线金属悬浮背光牧马人发光机械手感键盘电脑网吧usb键鼠套装lol外设 黑色橙黄光键盘+牧马人金属无声黑鼠标', 112, '99.00', 95, 5, '20180823\\201711210950498706.jpg', '【94%好评率】【双色注塑键帽不掉色】【可防水键盘】【不满意包退】', 1, 1511254249),
(24, '罗技（Logitech）G29 力反馈游戏方向盘', 148, '2399.00', 100, 0, '20180823\\201711211001335977.jpg', '逼真的力反馈效果.切实体会每一次重心偏移.', 1, 1511254893),
(25, '华硕（ASUS）RT-AC88U 3167M AC 双频 低辐射 智能无线路由器 吃鸡路由', 150, '1099.00', 100, 0, '20180823\\201711211002484280.jpg', '【吃鸡路由】双核1.4GHz强大芯片,链路聚合网速升级,4天线8LAN口,酷炫战舰助你起飞!', 1, 1511254968),
(26, '宏碁（acer）极光 H6517ABD 家用 投影机 投影仪（1080P分辨率 3400流明 家庭影院）', 151, '4299.00', 100, 0, '20180823\\201711211004095342.jpg', '【自营】极光系列高亮度便携式投影机家用,蓝光3D,24P电影模式,防尘设计,内置音箱！', 1, 1511255049),
(27, '亚太森博(Asiasymbol) 拷贝可乐 A4 70g 复印纸 500张/包 5包/箱', 152, '85.00', 100, 0, '20180823\\201711211005226160.jpg', '货源紧缺！欲购从速！', 1, 1511255122),
(28, '苏泊尔（SUPOR）厨房刀具套装菜刀切片刀优质不锈钢刀具五件套T0924K', 177, '129.00', 100, 0, '20180823\\201711211007248594.jpg', '苏泊尔品质厨具，惊艳绽放，钜惠爆款抢先购，先领券再下单，超值！', 1, 1511255244),
(29, '水星家纺 全棉四件套纯棉 斜纹印花床上用品套件床单被罩被套 加大双人1.8米床 赛德斯', 157, '489.00', 100, 0, '20180823\\201711211009488166.jpg', '火爆品秒，京选钜惠.四套件', 1, 1511255388),
(30, '琪朗 （KINGLONG）现代简约客厅吊灯创意个性欧式吊灯卧室餐厅灯具0240 8头（镀铬银）/（直径75高48厘米）', 162, '1678.00', 100, 0, '20180823\\201711211011406353.jpg', '【11.11返场钜惠】每满99-20元 vs 套餐大额满减，狂欢不停歇，疯狂抢购中！', 1, 1511255500),
(31, '立邦 金装净味五合一 油漆涂料内墙乳胶漆 墙面漆 18L', 178, '769.00', 100, 0, '20180823\\201711211013139346.jpg', '【11月22日08:00-23日08:00】本产品秒杀价718，立省51元，金装品质，净味环保，实惠大桶装.', 1, 1511255593),
(32, '科勒（KOHLER） 科勒卫浴套装坐便器马桶淋浴花洒浴室柜20020浴室套装包安装 马桶+花洒+浴室柜（需镜柜柜脚联系客服） 300坑距', 179, '9498.00', 100, 0, '20180823\\201711211015075812.jpg', '【23日8点引爆品牌秒杀】【单品67折】大件千城顺丰入户包安装，联系客服有惊喜.', 1, 1511255707),
(33, '卡夫威尔 400W13mm家用电钻 冲击电钻 工具箱 工具套装 工具包 家用维修工具 94件套 P1044A', 181, '399.00', 100, 0, '20180823\\201711211016361327.jpg', '【京东自营】3C国标认证400W冲击型电钻', 1, 1511255796),
(34, '子牧棉麻2017新款秋冬复古民族风女装棉服小棉袄女款短款拼接印花棉衣0002 红色 XL', 183, '198.00', 100, 0, '20180823\\201711211021491937.jpg', '多买优惠.', 1, 1511256109),
(35, '子牧棉麻2017新款秋冬复古民族风女装棉服小棉袄女款短款印花棉衣8061 红色 L', 183, '178.00', 100, 0, '20180823\\201711211023189225.jpg', '多买优惠', 1, 1511256198),
(36, '子牧棉麻 2017冬装新款民族风复古女装外套棉麻中式青花长款加厚棉衣0030 黑色 XL', 183, '238.00', 100, 0, '20180823\\201711211024439149.jpg', '冬季折扣大促，全场2件9折 3件8折', 1, 1511256283),
(37, '子牧棉麻2017新款秋冬复古民族风女装棉服小棉袄女款短款印花棉衣8061 深蓝色 L', 183, '178.00', 100, 0, '20180823\\201711211027469007.jpg', '多买优惠', 1, 1511256466),
(38, 'Brloote/巴鲁特男士羊毛呢大衣男修身时尚中长款风衣2017秋冬外套[预售] 黑色 175/96A', 184, '1260.00', 100, 0, '20180823\\201711211029454827.jpg', '商场同款', 1, 1511256585),
(39, '【宠物风】情侣睡衣女 冬加绒休闲口袋 连帽法兰绒长袖卡通猴子 珊瑚绒睡衣女男士 家居服加厚 小猫 灰 L 女款', 185, '139.00', 100, 0, '20180823\\201711211031466469.jpg', '多买优惠', 1, 1511256706),
(40, '北极绒 5条礼盒装男士内裤 男 平角裤冰丝透气柔软弹力U凸内衣四角短裤 组合Q 175/100(XL)', 187, '69.00', 100, 0, '20180823\\201711211033343928.jpg', '多大号的都有.', 1, 1511256814),
(41, '兰诗雨遮阳帽女夏太阳帽子可折叠护颈帽防紫外线户外沙滩帽凉帽女LSY400818 灰色', 189, '65.90', 100, 0, '20180823\\201711211035155271.jpg', '360°全方位防晒 经典款式 可拆卸防晒布设计 可调节帽围大小 送防风带', 1, 1511256915),
(42, '米妮班尼（minibanni） 2017新款童装女童冬装套装中大童加厚加绒运动卫衣三件套 酒红加绒 120码建议身高110cm', 190, '149.00', 100, 0, '20180823\\201711211036325468.jpg', '【冬装尝新购】全场满199元减20元，满499元减50元！', 1, 1511256991),
(43, '哈比熊（HOBIBEAR） 童鞋男童秋冬款男童鞋子男大童棉鞋加绒冬季儿童运动鞋女童 深蓝/红 34码/21.7cm内长', 43, '69.00', 100, 0, '20180823\\201711211039204338.jpg', '冬季运动鞋热卖 中邦加绒保暖 多色可选', 1, 1511257160),
(44, 'BMW 2系 99元订金购车送1000元加油卡！ 店内为准 2016 218i领先型', 52, '250000.00', 100, 0, '20180823\\201711211113211592.jpg', '★专享超值易鑫金融政策，数量有限先到先得！', 1, 1511259201),
(45, '吉利 帝豪GS 全新整车 订金1元 到店为准 2016 优雅版1.8L6MT风尚型', 59, '78000.00', 100, 0, '20180823\\201711211118436277.jpg', '下单购车分期2年0利率，首付低至1.6万元；再送1460元易车惠大礼包！', 1, 1511259523),
(46, '奔驰-梅赛德斯 AMG A 45 4MATIC', 53, '498000.00', 100, 0, '20180823\\201711211121543021.jpg', '经典怀旧.拉风之选.', 1, 1511259714),
(47, '沃尔沃XC90 全新整车 订金1元 到店为准 2017 T6智雅版', 54, '818000.00', 100, 0, '20180823\\201711211124344910.jpg', '下单购车免购置税，置换享万元礼包，分期0利息，首年车险补贴！再送2000元油卡', 1, 1511259874),
(48, '美赞臣(MeadJohnson) 安婴儿A+婴儿配方奶粉 1段(0-6月龄婴儿适用) 900克罐装', 61, '252.00', 100, 0, '20180823\\201711211127382543.jpg', '美赞臣A+全线产品含DHA智研360°TM 配方', 1, 1511260058),
(49, '智灵通乳酸钙冲剂罐装培育系列 40包', 62, '128.00', 97, 3, '20180823\\201711211129095799.jpg', '【京东自营】智灵通乳酸钙辅食联合任选2件搭配8折！建议乳酸钙搭配鳕鱼甘油进行补钙！', 1, 1511260149),
(50, '好奇 Huggies 铂金装 孙俪设计小鸡装 纸尿裤 NB84片 新生儿尿不湿 【0-5kg】【进口产品】', 63, '83.00', 100, 0, '20180823\\201711211130104005.jpg', '【部分商品满268减40！！！】好奇商品限时特惠中，速速抢购吧~', 1, 1511260210),
(51, 'ARDO安朵乳头保护罩哺乳乳盾奶头保护罩护奶器喂奶奶头保护罩辅助器 L', 64, '79.00', 100, 0, '20180823\\201711211131438029.jpg', '【限时领券】满198-10、298-20、398-30、598-60可货到付款', 1, 1511260303),
(52, '蓓贝子涵防辐射服孕妇装套装 银纤维防辐射肚兜内穿衣服套装秋冬 孕妇防辐射服 超大码孕前80-230斤一件穿到生银纤维背心 XXL', 65, '288.00', 100, 0, '20180823\\201711211133583196.jpg', '辣妈扫货换新，超大码背心，一件穿到生，专利产品，根据孕妈体型变化设计，高效屏蔽电磁波辐射！', 1, 1511260438),
(53, '智能尤克里里populele初学者学生成年人小吉他吉它迷你乌克丽丽初学者23寸（附赠琴包）', 66, '499.00', 100, 0, '20180823\\201711211135447863.jpg', '小雪来袭，让音乐带来冬日温暖，大牌乐器感恩活动', 1, 1511260544),
(54, '乐高（LEGO） 创意拼装/得宝拼装系列 儿童积木玩具 10696 小颗粒经典创意中号积木盒', 67, '249.00', 100, 0, '20180823\\201711211137288146.jpg', '陪伴计划·好券任领·尊享福利价', 1, 1511260648),
(55, '宏辉果蔬 苹果 烟台红富士 12个 单果约75mm 总重约2.1kg 新鲜水果', 68, '25.90', 100, 0, '20180823\\201711211139005246.jpg', '【京东团队 产地直采】【苹果品类 销量王者】【上市企业 品质保证】京东自营团队携手A股主板上市企业产地直采！脆甜多汁，看我烟台苹果！', 1, 1511260740),
(56, '农夫山泉 17.5°橙 5kg装 铂金果 新鲜水果', 68, '136.00', 100, 0, '20180823\\201711211140099694.jpg', '农夫山泉培育的高品质品种，拥有平均17.5黄金糖酸比的脐橙，来自中国核心产区，经过法国进口光学分拣线重重筛选，优中选优，不是所有脐橙都可以成为17.5°橙！', 1, 1511260809),
(57, '爱奇果 陕西眉县 精品徐香猕猴桃 15个精致装 单果约80-100g 新鲜水果', 68, '22.90', 98, 2, '20180823\\201711211141415322.jpg', '京东团队深入陕西眉县，产地直采，品质保证！', 1, 1511260901),
(58, ' 8斤装 香蕉  现摘现发 青香蕉 新鲜水果 非小米蕉粉蕉 芭蕉  圣瑜 生鲜', 68, '29.80', 100, 0, '20180823\\201711211142471644.jpg', '8斤装 香蕉 现摘现发 坏单包赔', 1, 1511260967),
(59, '绿鲜知 三宝白菜 约800g 新鲜蔬菜 火锅涮菜', 69, '9.80', 100, 0, '20180823\\201711211143554960.jpg', '京东自营时蔬 新鲜脆嫩 清甜爽口 纤维细腻 品质新鲜', 1, 1511261035),
(60, '恒都 澳洲牛腱子 1kg/袋 草饲牛肉', 70, '69.00', 100, 0, '20180823\\201711211145075780.jpg', '澳洲牧场天然草饲，酱牛肉、牛肉干原料', 1, 1511261107),
(61, '【现货】今锦上 阳澄湖大闸蟹1568型现货实物生鲜礼盒 公蟹4.0两 母蟹2.8两 4对8只装螃蟹 海鲜水产', 71, '238.00', 100, 0, '20180823\\201711211146295003.jpg', '京东自营 产地直发 鲜活速达 死蟹包赔', 1, 1511261189),
(62, '哈根达斯 （Haagen-Dazs）迷你脆皮条冰淇淋组合（迷你焦糖海盐脆皮条*3+迷你香草焦糖 扁桃仁脆皮条*2）', 72, '79.90', 100, 0, '20180823\\201711211148084041.jpg', '丝般感受.脆的不可想像.', 1, 1511261288),
(63, '洋河蓝色经典 天之蓝 46度 480ml 口感绵柔浓香型', 73, '313.00', 100, 0, '20180823\\201711211150501404.jpg', '国家品牌，品位洋河。嗨购再续，领券再满减，白条更优惠。', 1, 1511261450),
(64, '法国原装进口 荷兰乳牛3.5 3.8全脂牛奶1L*6 整箱', 74, '59.00', 100, 0, '20180823\\201711211152043459.jpg', '买品质牛奶上京东超市，诸多爆品低至每满99减20，领券满110再减5元!', 1, 1511261524),
(65, '一杯香茶叶绿茶龙井茶2017新茶龙井买1送1共200克明前龙井茶春茶绿茶散装浓香礼盒装', 75, '86.00', 100, 0, '20180823\\201711211154419032.jpg', '2017新茶头采龙井茶！收到品尝不满意包退！退货运费我承担', 1, 1511261681),
(66, '小猪佩奇（套装全10册） [3-6岁]', 76, '77.90', 100, 0, '20180823\\201711211156354981.jpg', '深受每个家庭和孩子喜爱的学前教育卡通同名图书，中英文对照珍藏版，附光盘', 1, 1511261795),
(67, '朝花夕拾/中小学生必读丛书-教育部推荐新课标同步课外阅读', 77, '11.10', 100, 0, '20180823\\201711211158465353.jpg', '红星照耀中国，新课标助力成长，教育部推荐新课标同步课外阅读', 1, 1511261926),
(68, '一个叫欧维的男人决定去死（新版） [En man som heter Ove]', 78, '28.40', 100, 0, '20180823\\201711211202409276.jpg', '美国亚MA逊总榜Top5，豆瓣网友9.1高分推荐，连续70周蝉联《纽约时报》畅销书榜。', 1, 1511262160),
(69, '高效能人士的七个习惯（25周年纪念版）', 79, '34.00', 100, 0, '20180823\\201711211204089176.jpg', '一代“思想巨匠”的经典巨著全新升级版，激励数亿人打造卓有成效的人生，为企业在各个层次培养领导人', 1, 1511262248),
(70, '半小时漫画中国史', 80, '37.90', 100, 0, '20180823\\201711211205495481.jpg', '其实是一本严谨的极简中国史。', 1, 1511262349),
(71, '食帖10：早餐，真的太重要了', 81, '29.70', 100, 0, '20180823\\201711211207386403.jpg', '怎样度过早晨，就怎样度过一生！ 超人气内容品牌「食帖」的第10本畅销书', 1, 1511262458),
(72, '试读 时间简史（插图版）【荐书联盟推荐】 [A Brief History of Time]', 82, '31.10', 100, 0, '20180823\\201711211209494482.jpg', '全球科学著作的里程碑，全球畅销1000万册。', 1, 1511262589),
(73, '物有物语 创意礼品DIY小屋 生日礼物女生 圣诞节礼物送孩子女友老婆闺蜜情侣实用浪漫圣诞 A款 梦星空', 83, '49.00', 100, 0, '20180823\\201711211222184580.jpg', '【京东配送】【赠空白贺卡】【梦星空款内赠工具胶水防尘罩】', 1, 1511263338),
(74, 'NTXT高产甜玉米中甜300号 超甜水果玉米种子南方鲜食玉米大会十大品种', 84, '49.00', 100, 0, '20180823\\201711211223575971.jpg', '超甜水果玉米,多买优惠', 1, 1511263437),
(75, '可行 正品乐果乳油蔬菜高纯农药杀虫剂花卉杀虫药杀蚜虫专用红蜘蛛 300克', 85, '54.00', 100, 0, '20180823\\201711211225418965.jpg', '大厂品质，低价促销，欢迎选购', 1, 1511263541),
(76, '德沃多微生物有机肥 绿植花卉多肉蔬菜土培盆栽通用颗粒肥500g', 86, '12.00', 100, 0, '20180823\\201711211228229488.jpg', '多买优惠', 1, 1511263702),
(77, '栀子花花卉绿植盆栽植物四季办公室内水培盆景观花桌面盆栽 带盆栽好发货', 87, '19.90', 100, 0, '20180823\\201711211234075150.jpg', '满两盆加送肥料，满4盆加送喷壶', 1, 1511264047),
(78, '欧莱雅 （LOREAL） 清润葡萄籽特润凝霜 50ml（欧莱雅女士 面霜 补水保湿 改善干燥肌）', 44, '158.99', 100, 0, '20180823\\201711211236063656.jpg', '出征新冬季！欧莱雅女士护肤AND男士护肤专场，爆款低至5折，低至满199减100，美耀一冬，你值得拥有！', 1, 1511264166),
(79, '沙宣洗护套装修护水养(洗发水500ml*2+护400ml)送洗50ml*3+护50ml*2(新老装随机发 男女士通用)', 45, '119.00', 100, 0, '20180823\\201711211252204876.jpg', '暖冬洗护季，打造全球好物盛典，帮你搞定“头”等大事。', 1, 1511265140),
(80, '阿芙（AFU）精油经典套装 （茶树10ml+薰衣草10ml+香薰炉+棉签+蜡烛+调配瓶）（痘痘肌 香薰）', 46, '209.00', 100, 0, '20180823\\201711211253454886.jpg', '打造精油护肤新主张！', 1, 1511265225),
(81, '云南白药 人气3+2牙膏套装 (留兰香180g+薄荷清爽185g+冬青香170g+2支牙刷)牙刷随机发货', 47, '79.90', 100, 0, '20180823\\201711211254521915.jpg', '让你绽放笑容力量.', 1, 1511265292),
(82, '高洁丝 Kotex 小Q包护垫日用无香型150mm 40+5片 轻盈透气 丝薄棉柔系列', 48, '7.50', 100, 0, '20180823\\201711211256007623.jpg', '京东女性护理，全球好物任你购，给你经期品质生活', 1, 1511265360),
(83, '香奈儿邂逅清新淡香水50ml新老包装随机发放', 49, '799.00', 100, 0, '20180823\\201711211257243556.jpg', '香奈儿,以优雅的气质勾勒出多彩人生....', 1, 1511265444),
(84, '【太太乐拖把 5年免费包换】旋转拖把桶 免手洗自动甩干脱水 双驱动好神拖墩布 拖地吸水拖布 果绿色 加强杆配3个拖头', 50, '69.00', 100, 0, '20180823\\201711211259181127.jpg', '老人小孩都轻松甩水', 1, 1511265558),
(85, '德国德克子弹头金鱼缸玻璃生态免换水超白亚克力屏风水族箱中型大型1.2米1.5米生态鱼缸 白冰花色 长1.2米宽40cm高128cm(触摸显示屏)', 51, '2280.00', 100, 0, '20180823\\201711211300459060.jpg', '送货入户安装 生态双面屏风，12mm厚缸体，带滤材，水泵，LED灯，显示屏，晒图送礼包', 1, 1511265645),
(86, '999（三九）感冒灵颗粒 10g*9袋（头痛，发热，鼻塞，流涕，咽痛）', 88, '14.00', 100, 0, '20180823\\201711211302308309.jpg', '用于治疗感冒引起的头疼、发热、鼻塞，家庭药箱需常备，暖暖的，很贴心！', 1, 1511265750),
(87, '鱼跃（YUWELL）血氧仪YX301 指夹式血氧饱和度脉搏检测器 彩色液晶显示', 89, '199.00', 100, 0, '20180823\\201711211303426281.jpg', '彩色液晶屏显示 重力感应 时尚外表 小巧便携 低耗能 操作简单~ 血氧脉搏都可以测', 1, 1511265822),
(88, '霍尼韦尔（Honeywell）口罩 H950V-G10靓呼吸萌宠版女孩 10只/盒两色 KN95防尘防颗粒物折叠式防雾霾口罩', 90, '228.00', 100, 0, '20180823\\201711211304511110.jpg', 'KN95防雾霾PM2.5口罩，过滤效率≥95%！专利呼吸阀，低阻力不憋气！棉质耳带，不勒耳朵！', 1, 1511265891),
(89, '幽幽', 1, '100.00', 9, 0, '20181008\\37c46858c4301fd3775655b343a34917.jpg', '型男必备格子衫', 2, 1538954486),
(90, '兄弟连牌的空调', 14, '199.00', 8, 0, '20181014\\ccb80abcb6d79519ed6c16d5c4f4c708.jpg', '省电,制冷速度快', 2, 1539520145);

-- --------------------------------------------------------

--
-- 表的结构 `shop_orders`
--

CREATE TABLE `shop_orders` (
  `oid` char(18) NOT NULL COMMENT '订单号',
  `sum` decimal(9,2) NOT NULL COMMENT '总金额',
  `cnt` int(11) NOT NULL COMMENT '总数量',
  `user_id` int(11) NOT NULL COMMENT '下单人编号',
  `rec` char(20) NOT NULL COMMENT '收货人',
  `tel` char(20) NOT NULL COMMENT '联系电话',
  `addr` varchar(200) NOT NULL COMMENT '收货地址',
  `status` tinyint(3) UNSIGNED DEFAULT '1' COMMENT '状态 1下单未发货 2发货 3收货',
  `create_at` int(10) UNSIGNED DEFAULT '0',
  `umsg` varchar(200) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop_orders`
--

INSERT INTO `shop_orders` (`oid`, `sum`, `cnt`, `user_id`, `rec`, `tel`, `addr`, `status`, `create_at`, `umsg`) VALUES
('201808251048198944', '5115.98', 4, 8, '张小四', '13520002258', '北京科技经营管理学院东时IT教育', 2, 0, ''),
('201808251054496389', '16295.00', 5, 8, '王钢蛋', '1313131313', '北京科技经营管理学院东时IT教育', 2, 1535165689, ''),
('201808251109286934', '15695.00', 5, 8, '李铁锤', '13520002258', '北京科技经营管理学院东时IT教育', 2, 1535166568, ''),
('201808251111285844', '15695.00', 5, 8, '彪子', '13520002258', '北京科技经营管理学院东时IT教育', 2, 1535166688, ''),
('201808251112276500', '15695.00', 5, 8, '赵二狗', '13520002258', '北京科技经营管理学院东时IT教育', 3, 1535166747, ''),
('201809271620028821', '198.00', 2, 8, '何欢', '1231231132123', '北京科技经营管理学院东时IT教育', 1, 1538036402, '周1到周5可以收货'),
('201810080726491243', '8697.00', 3, 8, '王云', '13520002258', '北京科技经营管理学院东时IT教育', 3, 1538954809, '请用黑色塑胶袋,需本人亲收'),
('201810131439278942', '22581.00', 6, 19, '马超', '13520002258', '北京科技经营管理学院东时IT教育', 1, 1539412767, '周1到周5可以收货'),
('201810141959045019', '342.80', 5, 20, '东时教育', '13520002258', '北京科技经营管理学院东时IT教育', 3, 1539518344, '周1到周5可以收货'),
('201810150634176388', '5798.00', 2, 20, '美丽', '13520002258', '北京科技经营管理学院东时IT教育', 1, 1539556457, '周1到周5可以收货'),
('201810160841473977', '8697.00', 3, 19, '汉武帝', '1313131313888', '北京科技经营管理学院东时IT教育', 3, 1539650507, '周1到周5可以收货');

-- --------------------------------------------------------

--
-- 表的结构 `shop_users`
--

CREATE TABLE `shop_users` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `uname` varchar(20) NOT NULL COMMENT '姓名',
  `password` char(32) NOT NULL COMMENT '密码',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `sex` enum('w','m','x') DEFAULT 'w' COMMENT '性别',
  `auth` tinyint(3) UNSIGNED DEFAULT '3' COMMENT '权限 1超级 2普通 3会员',
  `addr` varchar(200) DEFAULT '' COMMENT '收货地址',
  `uface` varchar(200) DEFAULT '' COMMENT '头像',
  `create_at` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop_users`
--

INSERT INTO `shop_users` (`uid`, `uname`, `password`, `tel`, `sex`, `auth`, `addr`, `uface`, `create_at`) VALUES
(1, '董卓', 'e10adc3949ba59abbe56e057f20f883e', '1', 'w', 2, '', '', 1534471681),
(5, 'ydd', 'e10adc3949ba59abbe56e057f20f883e', '1', 'w', 2, '', 'http://localhost/code/public/uploads/2018102809152773.jpg', 1534476929),
(8, '尼古拉斯&赵四', 'e10adc3949ba59abbe56e057f20f883e', '13520002258', 'w', 1, '北京市科技经营管理学院', 'http://localhost/code/public/uploads/2018102800330582.jpg', 1534479223),
(9, '岳云鹏', 'e10adc3949ba59abbe56e057f20f883e', '1', 'm', 3, '', '', 1534728844),
(11, 'lautin', 'e10adc3949ba59abbe56e057f20f883e', '1', 'm', 2, '合肥市巢湖柘皋镇', 'http://localhost/code/public/uploads/2018102800330582.jpg', 1534728873),
(12, 'lyf', 'e10adc3949ba59abbe56e057f20f883e', '2', 'w', 2, '', 'http://localhost/code/public/uploads/2018102809021234.jpg', 1534728885),
(13, '吃飞翔', 'e10adc3949ba59abbe56e057f20f883e', '4', 'm', 3, '', '', 1534728908),
(14, '呜呼', 'e10adc3949ba59abbe56e057f20f883e', '7', 'w', 2, '', '', 1534728943),
(15, '呆萌', 'e10adc3949ba59abbe56e057f20f883e', '8', 'm', 2, '', '', 1534729011),
(16, '皖A80CD9', 'e10adc3949ba59abbe56e057f20f883e', '9', 'w', 2, '', '', 1534729028),
(17, '前Duang', 'e10adc3949ba59abbe56e057f20f883e', '123123', 'w', 2, '', '', 1537970300),
(18, 'xxxxo', 'e10adc3949ba59abbe56e057f20f883e', '13520002258', 'w', 2, '', '', 1538954067),
(19, 'Zhu水', 'e10adc3949ba59abbe56e057f20f883e', '13520002258', 'm', 3, '北京市昌平区向阳屯', 'http://localhost/code/public/uploads/2018102809152773.jpg', 0),
(22, 'Lucy', '2ad0340c139574095ad1e6754b56d5b7', '', 'w', 3, '', '', 0),
(23, '赵Yun', 'e10adc3949ba59abbe56e057f20f883e', '', 'w', 3, '', '', 0),
(24, '大橙子', 'e10adc3949ba59abbe56e057f20f883e', '', 'w', 3, '', '', 0),
(25, 'Tom克鲁斯', '2ad0340c139574095ad1e6754b56d5b7', '', 'w', 3, '', '', 0),
(26, '科比', 'e10adc3949ba59abbe56e057f20f883e', '', 'w', 3, '', '', 0),
(34, '234567', 'e10adc3949ba59abbe56e057f20f883e', '', 'w', 3, '', '', 0),
(35, '大林', 'e10adc3949ba59abbe56e057f20f883e', '', 'w', 3, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `users_goods`
--

CREATE TABLE `users_goods` (
  `users_id` int(10) UNSIGNED NOT NULL,
  `goods_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_goods`
--

INSERT INTO `users_goods` (`users_id`, `goods_id`) VALUES
(19, 13),
(19, 21),
(19, 36),
(19, 22),
(19, 78);

--
-- 转储表的索引
--

--
-- 表的索引 `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `shop_cate`
--
ALTER TABLE `shop_cate`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `shop_goods`
--
ALTER TABLE `shop_goods`
  ADD PRIMARY KEY (`gid`);

--
-- 表的索引 `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`oid`);

--
-- 表的索引 `shop_users`
--
ALTER TABLE `shop_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `shop_cart`
--
ALTER TABLE `shop_cart`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `shop_cate`
--
ALTER TABLE `shop_cate`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- 使用表AUTO_INCREMENT `shop_goods`
--
ALTER TABLE `shop_goods`
  MODIFY `gid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- 使用表AUTO_INCREMENT `shop_users`
--
ALTER TABLE `shop_users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户编号', AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;