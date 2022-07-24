CREATE TABLE member (
	email	varchar2(50) PRIMARY KEY,
	pw	varchar2(20)	NOT	NULL,
	nickname	varchar2(30) NOT NULL,
	phone	varchar2(13) NOT NULL,
	name	varchar2(20) NULL
);

CREATE TABLE accommodation (
	num	number(6) PRIMARY KEY,
	name varchar2(50) NOT NULL,
	address	varchar2(50) NOT NULL,
	thumnail varchar2(100) NULL,
	tel varchar2(20) NULL
    
);
alter table accommodation drop column condition;
alter table accommodation add detail_image varchar2(100) null;

CREATE TABLE notification (
	num	number(4) PRIMARY KEY,
	title	varchar2(100) NOT NULL,
	create_date	varchar2(10) NOT NULL,
	content	varchar2(2000) NULL
);

CREATE TABLE event (
	num	number(4) PRIMARY KEY,
	title	varchar2(100) NOT	NULL,
	start_date	varchar2(10) NOT NULL,
	end_date	varchar2(10) NOT NULL
);

CREATE TABLE room (
	num	number NOT NULL,
	accommo_num number NOT NULL,
	name varchar2(50) NOT NULL,
	image varchar2(100) NULL,
	s_price varchar2(50) DEFAULT 0 NOT NULL,
	check_in	varchar2(10) NOT NULL,
	check_out	varchar2(10) NOT NULL,
	d_price	varchar2(50) DEFAULT 0 NOT NULL,
	end_time varchar2(10) NOT NULL,
	use_time varchar2(10) NOT NULL,
    constraint room_pk PRIMARY KEY (num),
    constraint room_fk FOREIGN KEY (accommo_num) REFERENCES accommodation
);
alter table room modify check_in varchar2(20);
alter table room modify check_out varchar2(20);
alter table room modify end_time varchar2(20);
alter table room modify use_time varchar2(20);
alter table room modify name varchar2(100);

CREATE TABLE inquiry (
	num number(6) NOT NULL,
	user_email	varchar2(50) NOT NULL,
	category varchar2(40) NOT NULL,
	type varchar2(20) NOT NULL,
	phone varchar2(20) NULL,
	email varchar2(20) NULL,
	content varchar2(2000)	NOT NULL,
	answer varchar2(2000) NULL,
    CONSTRAINT inquiry_pk PRIMARY KEY (num),
    CONSTRAINT inquiry_fk FOREIGN KEY (user_email) REFERENCES member
);
alter table inquiry modify answer default null;


CREATE TABLE condition (
	num	number(2) NOT NULL,
	name varchar2(20) NULL,
    CONSTRAINT condition_pk PRIMARY KEY (num)
);

CREATE TABLE accomm_condition (
	num number(6) NOT NULL,
	accomm_num number(6) NOT NULL,
	condi_num number(2) NOT NULL,
    CONSTRAINT accomm_condition_pk PRIMARY KEY (num),
    CONSTRAINT accomm_condition_fk FOREIGN KEY (accomm_num) REFERENCES accommodation,
    CONSTRAINT accomm_condition_fk2 FOREIGN KEY (condi_num) REFERENCES condition
);

COMMENT ON COLUMN condition.name IS '놀이시설:
스파, 수영장, 노래방, 당구대, 게임기, 안마의자, 커플PC, 미니바, 3D TV, 빔프로젝트';

CREATE TABLE reservation (
	num	number(7) NOT NULL,
	user_email varchar2(50)	NOT NULL,
	accomm_num	number NOT NULL,
	room_num number	NOT NULL,
	check_in varchar2(2) NOT NULL,
	check_out varchar2(2) NOT NULL,
	price number(7)	NOT NULL,
	is_reserve number(1) default 0 NOT NULL,
	visit_method varchar2(6) NULL,
    CONSTRAINT reservation_pk PRIMARY KEY (num),
    CONSTRAINT reservation_fk_email FOREIGN KEY (user_email) REFERENCES member,
    CONSTRAINT reservation_fk_accomm FOREIGN KEY (accomm_num) REFERENCES accommodation,
    CONSTRAINT reservation_fk_room FOREIGN KEY (room_num) REFERENCES room
);

COMMENT ON COLUMN reservation.is_reserve IS '이용전(0)/이용완료(1)';

CREATE TABLE review (
	num	number(6) NOT NULL,
	email varchar2(50) NOT NULL,
	accomm_num	number(6) NOT NULL,
	score number default 0 NOT NULL,
	room_name varchar2(50) NOT NULL,
	title varchar2(100) NOT NULL,
	content	varchar2(500) NULL,
	create_date	varchar2(10) NULL,
    CONSTRAINT review_pk PRIMARY KEY (num),
    CONSTRAINT review_fk_email FOREIGN KEY (email) REFERENCES member,
    CONSTRAINT review_fk_accomm_num FOREIGN KEY (accomm_num) REFERENCES accommodation
);

CREATE TABLE review_image (
	num	number(6) NOT NULL,
	review_num number(6) NOT NULL,
    CONSTRAINT review_image_pk PRIMARY KEY (num),
    CONSTRAINT review_image_fk FOREIGN KEY (review_num) REFERENCES review
);

create sequence inquiry_seq start with 1 increment by 1;

