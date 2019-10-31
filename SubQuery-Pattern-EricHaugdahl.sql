SELECT DISTINCT EmployeeNumber
FROM assignment
WHERE HoursWorked < (SELECT AVG(HoursWorked) FROM assignment)

SELECT DISTINCT EmployeeNumber
FROM assignment
WHERE NOT EXISTS ( SELECT *
                  FROM project
                  WHERE NOT EXISTS ( SELECT *
                                    FROM assignment
                                    WHERE Project.ProjectID=assignment.ProjectID))
