-- condition insert
insert into condition values(1, '스파');
insert into condition values(2, '수영장');
insert into condition values(3, '노래방');
insert into condition values(4, '당구대');
insert into condition values(5, '게임기');
insert into condition values(6, '안마의자');
insert into condition values(7, '커플PC');
insert into condition values(8, '미니바');
insert into condition values(9, '3D TV');
insert into condition values(10, '빔프로젝트');

select * from condition;

-- insert accommodation
insert into accommodation (num, name, thumnail, address, tel, detail_image) values(1, '강남 더 뮤즈', '//image.goodchoice.kr/resize_1000X500x0/adimg_new/1824/182031/f548520417580511897f4c4daeec7cc8.jpg', '서울 강남구 역삼동 678-9', '050440114244', '//image.goodchoice.kr/resize_490x348/adimg_new/1824/1129/b2852f8e4dfe024ce2d2af155e429fee.jpg');
commit;
select * from accommodation;

-- insert accomm_condition
insert into accomm_condition (num, accomm_num, condi_num) values(1, 1, 7);
insert into accomm_condition (num, accomm_num, condi_num) values(2, 1, 1);

-- insert room 
insert into room (num, accommo_num, name, image, s_price, check_in, check_out, d_price, end_time, use_time) values (1, 1, '랜덤객실', '//image.goodchoice.kr/resize_370x220/adimg_new/1824/193379/21b410f6cafe469585838f0572c87812.jpg', 25000, '18시까지', '최대 4시간', 0, '23시부터','익일12시');


    




