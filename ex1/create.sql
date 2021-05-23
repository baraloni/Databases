CREATE TABLE Branch(
	branchLocation VARCHAR(50) PRIMARY KEY,
	managerName VARCHAR(50) NOT NULL,
	managerPhone VARCHAR(50)
	);
	
CREATE TABLE Room(
	roomNum INTEGER PRIMARY KEY,
	chairsNum INTEGER CHECK(chairsNum >= 0),
	roomLocation VARCHAR(50) NOT NULL,
	FOREIGN KEY (roomLocation) REFERENCES Branch(branchLocation)
	);
	
CREATE TABLE GroupInBranch(
	groupName VARCHAR(50) PRIMARY KEY,
	ageRange INTEGER NOT NULL,
	CHECK(ageRange < 13 and ageRange > 0),
	groupLocation VARCHAR(50) NOT NULL,
	FOREIGN KEY (groupLocation) REFERENCES Branch(branchLocation),
	guideId INTEGER NOT NULL
	);
	
CREATE TABLE MemberInMov(
	memberId INTEGER PRIMARY KEY,
	memberName VARCHAR(50) NOT NULL,
	memberPhone VARCHAR(50) NOT NULL,
	groupName VARCHAR(50) NOT NULL,
	FOREIGN KEY (groupName) REFERENCES GroupInBranch(groupName),
	groupLocation VARCHAR(50) NOT NULL,
	FOREIGN KEY (groupLocation) REFERENCES Branch(branchLocation)
	);
	
	CREATE TABLE Guide(
	guideId INTEGER PRIMARY KEY,
	FOREIGN KEY (guideId) REFERENCES MemberInMov(memberId),
	guidingCourseDate VARCHAR(50) NOT NULL,
	groupName VARCHAR(50) NOT NULL,
	FOREIGN KEY (groupName) REFERENCES GroupInBranch(groupName),
	groupLocation VARCHAR(50) NOT NULL,
	FOREIGN KEY (groupLocation) REFERENCES Branch(branchLocation)
	);
	
CREATE TABLE book(
	guideId INTEGER NOT NULL,
	FOREIGN KEY (guideId) REFERENCES MemberInMov(memberId),
	roomNum INTEGER NOT NULL,
	FOREIGN KEY (roomNum) REFERENCES Room(roomNum),
	bookingDate VARCHAR(50) NOT NULL,
	UNIQUE(bookingDate, guideId),
	UNIQUE(bookingDate, roomNum)
	);
	
	ALTER TABLE GroupInBranch ADD FOREIGN KEY (guideId) 
		REFERENCES Guide(guideId)
	
	
	
	
