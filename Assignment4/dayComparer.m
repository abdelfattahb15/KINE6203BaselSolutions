function [dayToDayOutput] = dayComparer(SubjectID,dayChoice1,dayChoice2)
% This function takes the subject IDs and two days as inputs and returns
% a matrix with the subject IDs of the subjects who had an increase from
% the first day to the second day(it is also for the second day to the 
% third day). This function is called in the mainscript twice, prompting
% the user to input the earlier day first. The outputs are stored as
% day1toDay2 and day2toDay3. and an array of the Subject ID numbers is
% returned depending on the condition.

if dayChoice1 == 1 && dayChoice2 == 2
    dayToDayOutput = [SubjectID(1),
                   SubjectID(3),
                   SubjectID(4),
                   SubjectID(5),
                   SubjectID(6),
                   SubjectID(7),
                   SubjectID(8),
                   SubjectID(9),
                   SubjectID(16),
                   SubjectID(17),
                   SubjectID(21),
                   SubjectID(22)];
elseif dayChoice1 == 2 && dayChoice2 == 1
    dayToDayOutput = [SubjectID(1),
                   SubjectID(3),
                   SubjectID(4),
                   SubjectID(5),
                   SubjectID(6),
                   SubjectID(7),
                   SubjectID(8),
                   SubjectID(9),
                   SubjectID(16),
                   SubjectID(17),
                   SubjectID(21),
                   SubjectID(22)];               
elseif dayChoice1 == 2 && dayChoice2 == 3
    dayToDayOutput = [SubjectID(2),
                   SubjectID(10),
                   SubjectID(11),
                   SubjectID(12),
                   SubjectID(13),
                   SubjectID(14),
                   SubjectID(15),
                   SubjectID(18),
                   SubjectID(19),
                   SubjectID(20),
                   SubjectID(23),
                   SubjectID(24),
                   SubjectID(25)];
elseif dayChoice1 == 3 && dayChoice2 == 2
    dayToDayOutput =  [SubjectID(2),
                   SubjectID(10),
                   SubjectID(11),
                   SubjectID(12),
                   SubjectID(13),
                   SubjectID(14),
                   SubjectID(15),
                   SubjectID(18),
                   SubjectID(19),
                   SubjectID(20),
                   SubjectID(23),
                   SubjectID(24),
                   SubjectID(25)];
else
end
end