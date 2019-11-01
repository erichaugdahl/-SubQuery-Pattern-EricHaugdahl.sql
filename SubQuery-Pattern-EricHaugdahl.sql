Sub Query

SELECT DISTINCT EmployeeNumber
FROM assignment
WHERE HoursWorked < (SELECT AVG(HoursWorked) FROM assignment)

Double Not Exists

SELECT DISTINCT ProjectID
FROM project
WHERE NOT EXISTS (
	SELECT *
	FROM assignment
		WHERE NOT EXISTS (
		SELECT *
		FROM assignment
		WHERE assignment.ProjectID = project.ProjectID));
