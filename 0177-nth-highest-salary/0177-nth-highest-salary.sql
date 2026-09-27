CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT salary
      FROM
         (SELECT salary,
         dense_rank() over (ORDER BY salary DESC) as rnk
         from Employee) as emp
      WHERE rnk = N

  );
END