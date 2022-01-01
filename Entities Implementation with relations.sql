create table students (sid CHAR(8) , ssn CHAR(14) , sname char(30) , phone CHAR(11) , address CHAR(100) , gender CHAR(6) , class CHAR(4) , units int , GPA float , PRIMARY KEY (sid) );
create table prof (pid CHAR(10) , ssn CHAR(14) , pname char(30) , phone CHAR(11) , address CHAR(100) , gender CHAR(6) , salary float , Phd char(4) , R_interst char(100) , PRIMARY KEY (pid) );
create table dem (did CHAR(10) , ssn CHAR(14) , dname char(30) , phone CHAR(11) , address CHAR(100) , gender CHAR(6) , salary float , BE char(4) , R_interst char(100) , PRIMARY KEY (did) );
create table adm (aid CHAR(10) , ssn CHAR(14) , aname char(30) , phone CHAR(11) , address CHAR(100) , gender CHAR(6) , salary float , grad char(4) , work_s char(100) , PRIMARY KEY (aid) );
create table ssuper (sid CHAR(8) , ssn CHAR(14) , gender CHAR(6) , address CHAR(100) , phone CHAR(11) ,  ssname char(30) , job char(30) , primary key (sid,ssn) , foreign key (sid) REFERENCES students(sid) 	
ON DELETE CASCADE
ON UPDATE CASCADE) ;
create table subjects (scode char(7) ,  Sname char(30) , prereq char (100) , primary key (scode));
create table department (dno char(2) , dname char(30) , primary key (dno));

CREATE TABLE supervise_adminstrative (
    super_id CHAR(10),
    aid CHAR(10),
    PRIMARY KEY (aid),
    FOREIGN KEY (super_id)
        REFERENCES adm (aid)
			ON DELETE CASCADE
            ON UPDATE CASCADE,
    FOREIGN KEY (aid)
        REFERENCES adm (aid)
			ON DELETE CASCADE
            ON UPDATE CASCADE
);
CREATE TABLE supervise_professors (
    pid CHAR(10)not null,
    did CHAR(10),
    PRIMARY KEY (did),
    FOREIGN KEY (pid)
        REFERENCES prof (pid)
			ON DELETE CASCADE
            ON UPDATE CASCADE,
    FOREIGN KEY (did)
        REFERENCES dem (did)
			ON DELETE CASCADE
            ON UPDATE CASCADE
);
CREATE TABLE mange (
   dno char(2) ,
   start_date DATE,
    aid CHAR(10) not null UNIQUE,
    PRIMARY KEY (dno),
    FOREIGN KEY (dno)
        REFERENCES department (dno)
			ON DELETE CASCADE
            ON UPDATE CASCADE,
    FOREIGN KEY (aid)
        REFERENCES adm (aid)
			ON DELETE CASCADE
            ON UPDATE CASCADE
);
CREATE TABLE work_professors (
    pid CHAR(10)not null,
    dno CHAR(2) not null,
    PRIMARY KEY (pid),
    FOREIGN KEY (pid)
        REFERENCES prof (pid)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (dno)
        REFERENCES department (dno)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);
CREATE TABLE work_demonstrators (
    did CHAR(10)not null,
    dno CHAR(2) not null,
    PRIMARY KEY (did),
    FOREIGN KEY (did)
        REFERENCES dem (did)
        	ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (dno)
        REFERENCES department (dno)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);
CREATE TABLE work_Adminstrative (
    aid CHAR(10)not null,
    dno CHAR(2) not null,
    PRIMARY KEY (aid),
    FOREIGN KEY (aid)
        REFERENCES adm (aid)
        	ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (dno)
        REFERENCES department (dno)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);
CREATE TABLE listed (
    sid CHAR(8) not null,
    dno CHAR(2) ,
    PRIMARY KEY (sid),
    FOREIGN KEY (sid)
        REFERENCES students (sid)
        	ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (dno)
        REFERENCES department (dno)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);
CREATE TABLE learn (
    sid CHAR(8) not null ,
    scode char(7) not null,
    PRIMARY KEY (sid,scode),
    FOREIGN KEY (sid)
        REFERENCES students (sid)
        	ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (scode)
        REFERENCES subjects (scode)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);

CREATE TABLE finished (
    grade CHAR(2) not null,
    semster CHAR(8) not null,
    sid CHAR(8) not null ,
    scode char(7) not null,
    PRIMARY KEY (sid,scode),
    FOREIGN KEY (sid)
        REFERENCES students (sid)
        	ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (scode)
        REFERENCES subjects (scode)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);
CREATE TABLE Professors_Teach(
    pid CHAR(10) not null ,
    scode char(7) not null,
    PRIMARY KEY (scode),
    FOREIGN KEY (pid)
        REFERENCES prof (pid)
        	ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (scode)
        REFERENCES subjects (scode)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);
CREATE TABLE Demonstrators_Teach(
    did CHAR(10),
    scode char(7) not null,
    PRIMARY KEY (did,scode),
    FOREIGN KEY (did)
        REFERENCES dem (did)
        	ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (scode)
        REFERENCES subjects (scode)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);
CREATE TABLE Teach_with(
    did CHAR(10),
    pid CHAR(10) not null ,
    PRIMARY KEY (pid,did),
    FOREIGN KEY (did)
        REFERENCES dem (did)
        	ON DELETE CASCADE
			ON UPDATE CASCADE,
    FOREIGN KEY (pid)
        REFERENCES prof (pid)
        	ON DELETE CASCADE
			ON UPDATE CASCADE
);





 
 
