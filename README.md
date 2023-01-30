
# DAMG 6210 Data Management and Database Design 
## E-Learning-Management-Systems

### Mission Statement:
With the rapidly increasing rate of the demand for e-learning, the number of online courses is increasing. This project’s aim is to make the management of education system flexible with easy accessibility, effectiveness, and reasonable cost. In this project, we’ll be storing information of user’s, the course providers, course, etc., manage and provide better services.

### Business Rules:
Business rules plays an integral role to the layout of the database and will show how tables are interact with each other. There are the main business rules for our project:

- **The USER ACCOUNT can be either an ADMIN, STUDENT, or INSTRUCTOR, but can not be more than one at the same time.**
A supertype/subtype relationship is included with a disjoint rule. 
- **A new user must fill in key information upon registering especially the account type.**
A student account user will be taking courses and quizzes, a instructor account user will be posing and hosting courses, while admin deals with potential issue from the two type of user may encounter.
- **INSTRUCTOR Teaches COURSE, and COURSE is taught by INSTRUCTOR.**
An instructor must have at least one course to teach to be qualified as an instructor, while a course must have one instructor.
- **COURSE Has CONTENT, and CONTENT is related to COURSE.**
A course must have some content and empty courses are not allowed, and a content must and can only belongs to one course.
- **LEARNER Makes a REGISTRATION, and REGISTRATION Happens for a COURSE.**
A learner must register for something to be qualified as a learner. A learner may register for one or more courses.
- **REGISTRATION Generates INVOICE, and INVOICE is generated for a REGISTRATION.**
An invoice in generated when a registration happens, recording the necessary of the registration. An invoice belongs to only one single registration.
- **LEARNER Gives COURSE RATING, and COURSE Has COURSE RATING.**
Learners may give course rating to evaluate the experience they had. While giving a rating is optional for a learner, a course rating must belong to only one learner and course pairing.
- **LEARNER Completes CERTIFICATE, and there is CERTIFICATE For a COURSE.**
A learner receives certificate when a course is finished. A course may issue many certificates and a learner may receive multiple certificates from different courses.
- **CONTENT Has QUIZ, and there is a QUIZ for a CONTENT.**
Quiz is generated to evaluate learner’s mastery of a certain course content. Quizzes are deemed necessary for us and should be included in contents.
4
- **LEARNER Takes a QUIZ TAKEN, and QUIZ TAKEN Is for QUIZ.**
As quiz is mandatory for course content and learner is required to be registered in a course or more to be qualified as a learner, therefore a learner must take one or more quiz during a course.

### Project Group 14 Members:

- *Dinesh Murugesan*	`002197301`
- *Prachi Kunjir*			`002197614`
- *Sizhe Gu*			`002198472`
- *Sudarshan Waydande*	`001563532`
- *Yu Zhang*			`001051940`
