USE [ELearning];

GO

--OPENING ENCRYPTION KEY
OPEN SYMMETRIC KEY AccountPass_SM  
   DECRYPTION BY CERTIFICATE AccountPass;

--Populating USER_ACCOUNT

INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'saku', N'saku123', N'Sam', N'Kulki', N'sa.ku@gmail.com', 7639124578, CAST(N'2021-04-18T11:44:56.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'prsh', N'prsh123', N'Parth', N'Shah', N'pr.sh@gmail.com', 8745291035, CAST(N'2021-04-18T12:30:40.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'cynt', N'cynt123', N'Casey', N'Nicesat', N'cy.nt@gmail.com', 5483920175, CAST(N'2021-04-19T10:14:56.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'yuch', N'yuch123', N'Yumie', N'Chen', N'yu.ch@gmail.com', 4563782913, CAST(N'2021-04-19T11:44:56.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'shko', N'shko123', N'Shri', N'Kota', N'sh.ko@gmail.com', 9837256137, CAST(N'2021-04-20T14:20:53.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'jale', N'jale234', N'Jack', N'Lessely', N'ja.le@gmail.com', 6327864327, CAST(N'2021-04-20T09:27:48.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'sarpm', N'sarpm345', N'Sarah', N'Palmer', N'sar.pm@gmail.com', 7649210947, CAST(N'2021-04-20T13:40:56.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'jelo', N'jelo656', N'Jessie', N'Lotteo', N'je.lo@gmail.com', 9988735625, CAST(N'2021-04-21T11:00:56.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'shrutt', N'shrutt777', N'Shrav', N'Uttar', N'shr.utt@gmail.com', 7829225363, CAST(N'2021-04-21T11:44:56.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'apbo', N'apbo234', N'Apeksha', N'Borkar', N'ap.bo@gmail.com', 8916351738, CAST(N'2021-04-22T11:44:56.000' AS DateTime), N'ADMIN')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'mamo', N'mamo234', N'Manuel', N'Montrod', N'ma.mo@gmail.com', 7639124567, CAST(N'2021-04-24T11:44:56.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'shrkri', N'shrkri345', N'Shrikant', N'Krishna', N'shr.kri@gmail.com', 8745291123, CAST(N'2021-04-24T12:30:40.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'lama', N'lama456', N'Laura', N'Mayer', N'la.ma@gmail.com', 5483920345, CAST(N'2021-04-25T10:14:56.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'doko', N'doko567', N'Dino', N'Konstont', N'do.ko@gmail.com', 4563782456, CAST(N'2021-04-25T11:44:56.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'nvka', N'nvka678', N'Naveen', N'Kamra', N'nv.ka@gmail.com', 9837256234, CAST(N'2021-04-25T14:20:53.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'rish', N'rish789', N'Rick', N'Sherman', N'ri.sh@gmail.com', 6327864567, CAST(N'2021-04-26T09:27:48.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'hiha', N'hiha345', N'Hari', N'haran', N'hi.ha@gmail.com', 7649210678, CAST(N'2021-04-26T13:40:56.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'rohi', N'rohi890', N'Robin', N'Hill', N'ro.hi@gmail.com', 9988735789, CAST(N'2021-04-27T11:00:56.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'suda', N'suda456', N'Subrato', N'Das', N'su.da@gmail.com', 7829225890, CAST(N'2021-04-27T11:44:56.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'mavp', N'mavp678', N'Max', N'Verstap', N'ma.vp@gmail.com', 8916351456, CAST(N'2021-04-27T11:44:56.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'luha', N'luha234', N'Lui', N'Handen', N'lu.ha@gmail.com', 7639124345, CAST(N'2021-04-28T11:44:56.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'xich', N'xich789', N'Xinyi', N'Chen', N'xi.ch@gmail.com', 8745291109, CAST(N'2021-04-28T12:30:40.000' AS DateTime), N'INSTRUCTOR')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'glzu', N'glzu135', N'Gloira', N'Zu', N'go.zu@gmail.com', 7639124098, CAST(N'2021-05-02T08:30:40.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES (N'yuzhang', N'yuzhang246', N'Yu', N'Zhang', N'yu.zh@gmail.com', 8745291987, CAST(N'2021-05-03T09:30:40.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'suway', N'suway467', N'Sudarshan', N'Waydande', N'su.wa@gmail.com', 5483920765, CAST(N'2021-05-03T10:14:56.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'prku', N'prku679', N'Prachi', N'Kunjir', N'pr.ku@gmail.com', 4563782543, CAST(N'2021-05-03T11:44:56.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'dinmug', N'dinmug260', N'Dinesh', N'Murugesan', N'du.mu@gmail.com', 9837256432, CAST(N'2021-05-04T14:20:53.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'suhmuj', N'suhmuj480', N'Sushrut', N'Mujumdar', N'su.mu@gmail.com', 6327864321, CAST(N'2021-05-05T09:27:48.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'depa', N'depa222', N'Dev', N'Patel', N'de.pa@gmail.com', 7649210210, CAST(N'2021-05-06T13:40:56.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'ropat', N'ropat480', N'Ronak', N'Patil', N'ro.pa@gmail.com', 9988735246, CAST(N'2021-05-06T11:00:56.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'diuni', N'diuni591', N'Divya', N'Uni', N'di.un@gmail.com', 7829225373, CAST(N'2021-05-07T11:44:56.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'lupo', N'lupo042', N'Lauren', N'Polito', N'la.po@gmail.com', 8916351111, CAST(N'2021-05-07T11:44:56.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'scgk', N'scgk666', N'Scout', N'Gullick', N'sc.gu@gmail.com', 7639124222, CAST(N'2021-05-08T11:44:56.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'mxjn', N'mxjn160', N'Maxi', N'Jener', N'ma.je@gmail.com', 8745291333, CAST(N'2021-05-09T12:30:40.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES (N'abrao', N'abrao270', N'Abby', N'Rao', N'ab.ro@gmail.com', 7639124444, CAST(N'2021-05-10T11:44:56.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'shcp', N'shcp250', N'Shubham', N'Chopade', N'sh.ch@gmail.com', 8745291555, CAST(N'2021-05-11T12:30:40.000' AS DateTime), N'LEARNER')
INSERT [dbo].[USER_ACCOUNT] ( [AccountUsername], [AccountPassword], [FirstName], [LastName], [EmailId], [ContactNo], [CreatedOn], [AccountType]) VALUES ( N'kpkp', N'kpkp333', N'Karan', N'Partil', N'kar.pa@gmail.com', 5483920666, CAST(N'2021-05-12T10:14:56.000' AS DateTime), N'LEARNER')

GO

--Populating ADMIN
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000000, N'Database Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000001, N'Asst. Database Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000002, N'Learner Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000003, N'Instructor Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000004, N'Course Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000005, N'Registration Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000006, N'Certification Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000007, N'Network Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000008, N'Asst. Network Admin')
INSERT [dbo].[ADMIN] ([AdminId], [AdminRole]) VALUES (1000009, N'Quiz Admin')
GO

--Populating INSTRUCTOR
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000010, N'Northeastern', N'Database Design')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000011, N'Northeastern', N'Web Design')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000012, N'Northeastern', N'Data Science')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000013, N'Northeastern', N'User Interface')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000014, N'Northeastern', N'Cyber Security')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000015, N'Northeastern', N'Application Development')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000016, N'Harvard', N'Database Design')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000017, N'MIT', N'Cloud Computing')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000018, N'MIT', N'Web Design')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000019, N'Harvard', N'SCRUM')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000020, N'MIT', N'Big Data')
INSERT [dbo].[INSTRUCTOR] ([InstructorId], [University], [FieldOfStudy]) VALUES (1000021, N'Harvard', N'Data Analytics')
GO

--Populating LEARNER
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000022, N'Under Grad Student')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000023, N'Grad Student')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000024, N'Employee')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000025, N'Professor')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000026, N'Under Grad Student')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000027, N'Under Grad Student')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000028, N'Grad Student')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000029, N'Employee')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000030, N'Grad Student')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000031, N'Grad Student')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000032, N'Professor')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000033, N'Employee')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000034, N'Under Grad Student')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000035, N'Employee')
INSERT [dbo].[LEARNER] ([LearnerId], [Occupation]) VALUES (1000036, N'Professor')
GO


--Populating COURSE

INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'CSYS100', N'Cybersecurity Encrypt', 160, 1000014)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'CSYS200', N'Cloud Development Tools', 180, 1000017)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'DAMG100', N'Data Science Tools', 200, 1000012)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'DAMG200', N'Big data and Hadoop', 150, 1000020)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'DAMG300', N'Database Designing Tools', 200, 1000010)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'INFOSYS100', N'Database Management and Design', 200, 1000010)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'INFOSYS200', N'Application Engineering and Development', 150, 1000015)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'INFOSYS600', N'Data Analysis Methods', 150, 1000021)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'INFOSYS700', N'Web Development tools', 170, 1000011)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'INFOSYS800', N'Web Design Methods', 170, 1000018)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'PMG100', N'Project Management Methods', 320, 1000019)
INSERT [dbo].[COURSE] ([CourseId], [CourseName], [CourseFees], [InstructorId]) VALUES (N'PMG200', N'User Experience Engineering', 200, 1000013)

GO

--Populating CONTENT
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'CSYS1001', N'Encryption Methods', N'CSYS100')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'CSYS1002', N'Decryption Methods', N'CSYS100')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'CSYS2001', N'GCP, AWS', N'CSYS200')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'DAMG1001', N'R Language', N'DAMG100')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'DAMG1002', N'Python Language', N'DAMG100')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'DAMG2001', N'API, Batch Processing', N'DAMG200')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'DAMG3001', N'ER Studio', N'DAMG300')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'DAMG3002', N'PowerBI', N'DAMG300')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'INFOSYS1001', N'DDL', N'INFOSYS100')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'INFOSYS1002', N'DML, DCL', N'INFOSYS100')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'INFOSYS2001', N'OOPS', N'INFOSYS200')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'INFOSYS2002', N'Design Pattern, Interface', N'INFOSYS200')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'INFOSYS6001', N'Alogs for Transformtion', N'INFOSYS600')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'INFOSYS6002', N'Matrix Manupilation', N'INFOSYS600')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'INFOSYS7001', N'HTML, CSS', N'INFOSYS700')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'INFOSYS8001', N'JS, NodesJS', N'INFOSYS800')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'PMG1001', N'Team Activities, Networking Events', N'PMG100')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'PMG2001', N'Folium', N'PMG200')
INSERT [dbo].[CONTENT] ([ContentId], [Description], [CourseId]) VALUES (N'PMG2002', N'Figma', N'PMG200')

GO

--Populating QUIZ

INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1110, 10, 2, 15, 8, N'INFOSYS1001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1120, 20, 3, 20, 12, N'INFOSYS1002')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1210, 10, 2, 15, 8, N'INFOSYS2001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1220, 20, 3, 20, 12, N'INFOSYS2002')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1221, 30, 5, 30, 18, N'INFOSYS2002')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1610, 10, 2, 15, 8, N'INFOSYS6001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1620, 20, 3, 20, 12, N'INFOSYS6002')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1710, 10, 2, 15, 8, N'INFOSYS7001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (1810, 10, 2, 15, 8, N'INFOSYS8001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (2110, 10, 2, 15, 8, N'DAMG1001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (2120, 20, 3, 20, 12, N'DAMG1002')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (2210, 10, 2, 15, 8, N'DAMG2001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (2310, 10, 2, 15, 8, N'DAMG3001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (2320, 20, 3, 20, 12, N'DAMG3002')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (3110, 10, 2, 15, 8, N'CSYS1001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (3120, 20, 3, 20, 12, N'CSYS1002')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (3121, 30, 5, 30, 18, N'CSYS1002')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (3210, 10, 2, 15, 8, N'CSYS2001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (4110, 10, 2, 15, 8, N'PMG1001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (4210, 10, 2, 15, 8, N'PMG2001')
INSERT [dbo].[QUIZ] ([QuizId], [QuizTime], [Attempts], [TotalMarks], [MinimumPassingMarks], [ContentId]) VALUES (4220, 20, 3, 20, 12, N'PMG2002')

GO

--Populating REGISTRATION

INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-14' AS Date), N'INFOSYS100', 1000022)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-14' AS Date), N'INFOSYS200', 1000023)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-14' AS Date), N'DAMG100', 1000024)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-14' AS Date), N'INFOSYS600', 1000025)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-14' AS Date), N'INFOSYS700', 1000026)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-15' AS Date), N'CSYS100', 1000027)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-15' AS Date), N'CSYS200', 1000028)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-16' AS Date), N'PMG100', 1000029)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-16' AS Date), N'PMG200', 1000030)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-16' AS Date), N'DAMG200', 1000031)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-16' AS Date), N'DAMG300', 1000032)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-18' AS Date), N'INFOSYS800', 1000033)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-18' AS Date), N'INFOSYS200', 1000034)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-18' AS Date), N'INFOSYS600', 1000035)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-05-18' AS Date), N'CSYS200', 1000036)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-08-15' AS Date), N'DAMG300', 1000023)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-08-15' AS Date), N'INFOSYS800', 1000025)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-08-18' AS Date), N'INFOSYS100', 1000029)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-08-18' AS Date), N'INFOSYS600', 1000033)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-09-05' AS Date), N'CSYS200', 1000022)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-09-06' AS Date), N'DAMG300', 1000026)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-09-07' AS Date), N'DAMG300', 1000029)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-09-07' AS Date), N'INFOSYS200', 1000031)
INSERT [dbo].[REGISTRATION] ( [RegistrationDate], [CourseId], [LearnerId]) VALUES ( CAST(N'2021-09-09' AS Date), N'PMG100', 1000036)

GO

--Populating INVOICE

INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-05-14' AS Date), N'Completed', 5000)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'CREDIT', CAST(N'2021-05-14' AS Date), N'Completed', 5001)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-05-14' AS Date), N'Completed', 5002)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'PAYPAL', CAST(N'2021-05-14' AS Date), N'Completed', 5003)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'CREDIT', CAST(N'2021-05-14' AS Date), N'Completed', 5004)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-05-15' AS Date), N'Completed', 5005)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-05-15' AS Date), N'Completed', 5006)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-05-16' AS Date), N'Completed', 5007)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'PAYPAL', CAST(N'2021-05-16' AS Date), N'Completed', 5008)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'CREDIT', CAST(N'2021-05-16' AS Date), N'Completed', 5009)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'PAYPAL', CAST(N'2021-05-16' AS Date), N'Completed', 5010)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'CREDIT', CAST(N'2021-05-18' AS Date), N'Completed', 5011)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-05-18' AS Date), N'Completed', 5012)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'PAYPAL', CAST(N'2021-05-18' AS Date), N'Completed', 5013)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'CREDIT', CAST(N'2021-05-18' AS Date), N'Completed', 5014)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'PAYPAL', CAST(N'2021-08-15' AS Date), N'Completed', 5015)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-08-15' AS Date), N'Completed', 5016)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'CREDIT', CAST(N'2021-08-18' AS Date), N'Completed', 5017)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'PAYPAL', CAST(N'2021-08-18' AS Date), N'Completed', 5018)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-09-05' AS Date), N'Completed', 5019)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'CREDIT', CAST(N'2021-09-06' AS Date), N'Completed', 5020)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'CREDIT', CAST(N'2021-09-07' AS Date), N'Completed', 5021)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-09-07' AS Date), N'Completed', 5022)
INSERT [dbo].[INVOICE] ( [PaymentMode], [Date], [Status], [RegistrationId]) VALUES ( N'DEBIT', CAST(N'2021-09-09' AS Date), N'Completed', 5023)

GO

--Populating QUIZ_TAKEN


INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1210, 1000023, CAST(N'2021-06-02T11:30:44.000' AS DateTime), 12)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1110, 1000022, CAST(N'2021-06-14T10:20:30.000' AS DateTime), 13)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 2110, 1000024, CAST(N'2021-06-15T12:15:33.000' AS DateTime), 14)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1610, 1000025, CAST(N'2021-06-15T12:16:33.000' AS DateTime), 10)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1710, 1000026, CAST(N'2021-06-15T12:20:33.000' AS DateTime), 11)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1220, 1000023, CAST(N'2021-06-16T11:40:44.000' AS DateTime), 16)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 3110, 1000027, CAST(N'2021-06-16T11:50:44.000' AS DateTime), 14)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 3210, 1000028, CAST(N'2021-06-18T13:10:33.000' AS DateTime), 13)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 4110, 1000029, CAST(N'2021-06-20T10:09:00.000' AS DateTime), 15)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 4210, 1000030, CAST(N'2021-06-20T10:19:00.000' AS DateTime), 12)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 2210, 1000031, CAST(N'2021-06-20T10:33:00.000' AS DateTime), 12)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 2310, 1000032, CAST(N'2021-06-25T15:44:30.000' AS DateTime), 9)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1810, 1000033, CAST(N'2021-06-25T16:44:30.000' AS DateTime), 13)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1210, 1000034, CAST(N'2021-06-27T14:44:30.000' AS DateTime), 13)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1610, 1000035, CAST(N'2021-06-27T14:50:30.000' AS DateTime), 11)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 3210, 1000036, CAST(N'2021-06-28T15:30:30.000' AS DateTime), 15)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1221, 1000023, CAST(N'2021-07-16T11:25:44.000' AS DateTime), 25)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1120, 1000022, CAST(N'2021-07-17T10:20:30.000' AS DateTime), 17)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 2120, 1000024, CAST(N'2021-07-17T12:15:33.000' AS DateTime), 18)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1620, 1000025, CAST(N'2021-07-18T23:15:33.000' AS DateTime), 16)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 3120, 1000027, CAST(N'2021-07-18T23:20:33.000' AS DateTime), 19)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 4220, 1000030, CAST(N'2021-07-19T11:20:33.000' AS DateTime), 17)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 2320, 1000032, CAST(N'2021-07-19T15:20:33.000' AS DateTime), 20)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1220, 1000034, CAST(N'2021-07-20T15:20:33.000' AS DateTime), 18)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1620, 1000035, CAST(N'2021-07-21T16:20:33.000' AS DateTime), 18)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 1221, 1000034, CAST(N'2021-08-05T15:20:33.000' AS DateTime), 26)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 2310, 1000023, CAST(N'2021-09-15T11:20:33.000' AS DateTime), 14)
INSERT [dbo].[QUIZ_TAKEN] ( [QuizId], [LearnerId], [QuizTakeDate], [MarksObtained]) VALUES ( 2320, 1000023, CAST(N'2021-09-16T11:20:33.000' AS DateTime), 10)

GO

--Populating CERTIFICATE

INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-06-15T12:40:33.000' AS DateTime), 1000026, N'INFOSYS700')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-06-18T13:30:33.000' AS DateTime), 1000028, N'CSYS200')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-06-20T10:25:00.000' AS DateTime), 1000029, N'PMG100')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-06-20T10:53:00.000' AS DateTime), 1000031, N'DAMG200')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-06-25T17:14:30.000' AS DateTime), 1000033, N'INFOSYS800')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-06-28T15:55:30.000' AS DateTime), 1000036, N'CSYS200')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-07-16T12:25:44.000' AS DateTime), 1000023, N'INFOSYS200')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-07-17T10:50:30.000' AS DateTime), 1000022, N'INFOSYS100')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-07-17T12:45:33.000' AS DateTime), 1000024, N'DAMG100')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-07-18T23:55:33.000' AS DateTime), 1000025, N'INFOSYS600')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-07-18T23:58:33.000' AS DateTime), 1000027, N'CSYS100')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-07-19T11:57:33.000' AS DateTime), 1000030, N'PMG200')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-07-19T15:50:33.000' AS DateTime), 1000032, N'DAMG300')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-07-21T16:55:33.000' AS DateTime), 1000035, N'INFOSYS600')
INSERT [dbo].[CERTIFICATE] ( [CompletedOn], [LearnerId], [CourseId]) VALUES ( CAST(N'2021-08-05T15:50:33.000' AS DateTime), 1000034, N'INFOSYS200')

GO

--Populating COURSE_RATING


INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000026, N'INFOSYS700', CAST(N'2021-06-17' AS Date), 4)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000028, N'CSYS200', CAST(N'2021-06-20' AS Date), 5)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000029, N'PMG100', CAST(N'2021-06-21' AS Date), 3)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000031, N'DAMG200', CAST(N'2021-06-22' AS Date), 4)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000033, N'INFOSYS800', CAST(N'2021-06-26' AS Date), 3)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000023, N'INFOSYS200', CAST(N'2021-07-18' AS Date), 5)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000022, N'INFOSYS100', CAST(N'2021-07-19' AS Date), 5)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000024, N'DAMG100', CAST(N'2021-07-20' AS Date), 3)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000025, N'INFOSYS600', CAST(N'2021-07-21' AS Date), 4)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000027, N'CSYS100', CAST(N'2021-07-21' AS Date), 4)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000030, N'PMG200', CAST(N'2021-07-23' AS Date), 5)
INSERT [dbo].[COURSE_RATING] ( [LearnerId], [CourseId], [RateDate], [Rating]) VALUES ( 1000035, N'INFOSYS600', CAST(N'2021-07-24' AS Date), 4)

GO


---------------------------------- EXAMPLES TO TEST ALL THE UDF, VIEWS AND STROED PROCEDURE---------------------------------------------- 
/*

-------------------ENCRYPTION DECRYPTION-----------------------------------
--To Open Encryption Key
OPEN SYMMETRIC KEY AccountPass_SM  
   DECRYPTION BY CERTIFICATE AccountPass;

--ENCRYPTION AND DECRYPTION example---------
declare @sam varchar(100), @dec varbinary(400)
set @sam = 'xyz@456'
set @dec= dbo.ENCRYPT_PASSWORD(@sam)
select dbo.DECRYPT_PASSWORD(@dec) as Decrpyted_PWD

--To close the key use below command whenever you wish to stop using ENCRYPTION
close symmetric key AccountPass_SM;

------------------------UDF-------------------------------------------------

SELECT dbo.[AD_Role]( 1000005) as Role;

------------------------STORED PROCEDURE-------------------------------------

--Stored Procedure to INSERT USER
EXEC [INSERT_USER] 'kape123', 'k123', 'kape', 'cod', 'kc@gmail.com', 1234567890, '02-03-2022 10:20:32', 'ADMIN'
GO

--Find the Max Score obtained given the QuizId
EXEC [FIND_MAX_SCORE] 3120
GO


--Stored Procedure for Given the Instructor get the Course and Learner details.
EXEC [FIND_LEARNER] 1000010
GO


--Stored Procedure for Getting Registration Details of a Learner
EXEC [GET_REGISTRATION_DETAILS] 1000022 
GO

--Check whether given the LearnerId if Learner hs unpass a Quiz
EXEC [CHECK_UNQUALIFIED] 1000023
GO

------------------------VIEWS -----------------------------------------

-- VIEW the top 3 students performed in the quiz for each contents or any specific content
SELECT * FROM [TOP3LEARNER] WHERE [ContentId] = 'INFOSYS2001'
GO


-- View the average rating of all courses
SELECT * FROM [AVG_RATE] ORDER BY AvgRate DESC
GO


-- View the Number of Registration and Number of Certificate completed for that Course
SELECT * FROM [NUMBER_CER_REG] ORDER BY CourseId DESC
GO


--View the Number of contents for the Course
SELECT * FROM [NUM_CONTENTS] ORDER BY CourseId ASC
GO


*/