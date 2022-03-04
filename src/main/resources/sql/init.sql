CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(64)  NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(64)  NOT NULL DEFAULT '' COMMENT '用户密码',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='管理员用户表';

CREATE TABLE `message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `from_user` int(11)  NOT NULL DEFAULT '0' COMMENT '发送者',
  `to_user` int(11)  NOT NULL DEFAULT '0' COMMENT '接受者',
  `content` varchar(64)  NOT NULL DEFAULT '' COMMENT '消息文本',
  `send_time` varchar(64) NOT NULL DEFAULT '' COMMENT '发送时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息表';

CREATE TABLE `order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `car_info_id` int(11)  NOT NULL DEFAULT '0' COMMENT '订单号',
  `person_id` int(11)  NOT NULL DEFAULT '0' COMMENT '用户id',
  `change_times` int(11)  NOT NULL DEFAULT '0' COMMENT '改签次数',
  `status` int(11)  NOT NULL DEFAULT '0' COMMENT '交易状态，0是预定未付款， 1是已经支付， 2是退票',
  `stauts_msg` varchar(128)  NOT NULL DEFAULT '' COMMENT '状态描述信息',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

CREATE TABLE `trips` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `orgin_location` varchar(128)  NOT NULL DEFAULT '' COMMENT '开始位置',
  `destination_location` varchar(128)  NOT NULL DEFAULT '' COMMENT '目标位置',
  `start_time` varchar(128) NOT NULL DEFAULT '' COMMENT '开始时间',
  `reach_time` varchar(128) NOT NULL DEFAULT '' COMMENT '到达时间',
  `span_days` varchar(128)  NOT NULL DEFAULT '' COMMENT '跨天',
  `car_num` varchar(128)  NOT NULL DEFAULT '' COMMENT '车次号',
  `ticket_price` float (20)  NOT NULL DEFAULT '0.00' COMMENT '票价',
  `ticket_num` int(11)  NOT NULL DEFAULT '0' COMMENT '票数',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='火车车票查询';

CREATE TABLE `trips_via` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `station_name` varchar(128)  NOT NULL DEFAULT '' COMMENT '车站名称',
  `start_time` varchar(128) NOT NULL DEFAULT '' COMMENT '开始时间',
  `reach_time` varchar(128) NOT NULL DEFAULT '' COMMENT '到达时间',
  `car_num` varchar(128)  NOT NULL DEFAULT '' COMMENT '车次号',
  `order_num` int(11)  NOT NULL DEFAULT '0' COMMENT '序号',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='火车途径信息表';

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(128)  NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(128)  NOT NULL DEFAULT '' COMMENT '密码',
  `true_name` varchar(128)  NOT NULL DEFAULT '' COMMENT '真名',
  `id_card_num` varchar(128)  NOT NULL DEFAULT '' COMMENT '身份证号',
  `phone_num` varchar(128)  NOT NULL DEFAULT '' COMMENT '手机号',
  `age` int(11)  NOT NULL DEFAULT '0' COMMENT '年龄',
  `sex` varchar(128)  NOT NULL DEFAULT '' COMMENT '性别',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';