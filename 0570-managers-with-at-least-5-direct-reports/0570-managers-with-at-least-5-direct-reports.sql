# Write your MySQL query statement below
#####################CORRECT###################
#SELECT e1.name
#FROM Employee e1 LEFT JOIN Employee e2
#ON e1.id = e2.managerId 
#GROUP BY e1.id, e1.name
#HAVING count(e2.id) >= 5

#-----------------------------------------------------------------#
# # # # # #--------------------ANOTHER TRY-------------------------
SELECT e1.name
FROM Employee e1 JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e2.managerId
HAVING count(e2.managerId) >= 5