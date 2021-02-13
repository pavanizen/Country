use WFA3DotNet

create table Country(
    CountryId int not null primary key,
	CountryName varchar(20)
	)
	insert into Country Values(1,'India')
	insert into Country Values(2,'China')
	insert into Country Values(3,'Japan')
	insert into Country Values(4,'France')
	select * from Country
	create table Statetable(
	StateId int not null primary key,
	CountryId int Foreign Key References Country(CountryId), 
	StateName varchar(20)
	)
	select * from Statetable
	insert into Statetable values(1,1,'Telangana')

	insert into Statetable values(2,1,'Maharashtra')
	insert into Statetable values(3,1,'Gujarat')
	insert into Statetable values(4,1,'Delhi')

	insert into Statetable values(5,2,'Qinghai')
	insert into Statetable values(6,2,'Sichuan')
	insert into Statetable values(7,2,'Gansu')
	insert into Statetable values(8,2,'Yunnan')

	insert into Statetable values(9,3,'Kanto')
	insert into Statetable values(10,3,'Chubu')
	insert into Statetable values(11,3,'Chugoku')
	insert into Statetable values(12,3,'Shikoku')
	
	insert into Statetable values(17,4,'Berry')
	insert into Statetable values(18,4,'Normandy')
	insert into Statetable values(19,4,'Champagne')
	insert into Statetable values(20,4,'Lyonnais')

	create table CityTable(
	      CityId int not null primary key,
		  StateId int foreign key references StateTable(StateId),
		  CityName varchar(20)
		  )
		  insert into CityTable values(11,1,'Hyderabad')
		  insert into CityTable values(12,1,'Warangal')

		  insert into CityTable values(13,2,'Nagpur')
		  insert into CityTable values(14,2,'Pune')

		  insert into CityTable values(15,3,'Surat')
		  insert into CityTable values(16,3,'Rajkot')

		  insert into CityTable values(17,4,'Guruguram')
		  insert into CityTable values(18,4,'Mehrauli')

		   insert into CityTable values(19,5,'Yushu')
		    insert into CityTable values(20,5,'Haibei')

			 insert into CityTable values(21,6,'Chengdu')
			  insert into CityTable values(22,6,'Leshan')

			insert into CityTable values(23,7,'Lanzhou')
			 insert into CityTable values(24,7,'Wuwei')

			  insert into CityTable values(25,8,'Kunmin')
			   insert into CityTable values(26,8,'Lijiang')

			   insert  into CityTable values(27,9,'Hakone')
			    insert  into CityTable values(28,9,'Yokohama')

				 insert  into CityTable values(29,10,'Toyama')
				  insert  into CityTable values(30,10,'Gifu')

				   insert  into CityTable values(31,11,'kure')
				    insert  into CityTable values(32,11,'Tottori')

					 insert  into CityTable values(33,12,'Naruto')
					  insert  into CityTable values(34,12,'Takamatsu')

insert  into CityTable values(35,17,'Paris')
insert  into CityTable values(36,17,'Lyon')
insert  into CityTable values(37,18,'Marseille')
insert  into CityTable values(38,18,'Lille')


insert  into CityTable values(39,19,'Nantes')
insert  into CityTable values(40,19,'Toulon')

insert  into CityTable values(41,20,'Angers')
insert  into CityTable values(42,20,'Metz')

select * from CityTable


drop table CityTab
drop table StateTab

drop table CountryTab
