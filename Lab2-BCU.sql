-- 1. Display all information from the ChuyenGia table.
SELECT * FROM ChuyenGia;

-- 2. List full name and email of all experts.
SELECT HoTen, Email FROM ChuyenGia;

-- 3. Display company name and number of employees of all companies.
SELECT TenCongTy, SoNhanVien FROM CongTy;

-- 4. List names of projects that are in the 'In Progress' status.
SELECT TenDuAn FROM DuAn WHERE TrangThai = N'Đang thực hiện';

-- 5. Display name and type of all skills.
SELECT TenKyNang, LoaiKyNang FROM KyNang;

-- 6. List full name and major of male experts.
SELECT HoTen, ChuyenNganh FROM ChuyenGia WHERE GioiTinh = N'Nam';

-- 7. Display company name and field of companies with more than 150 employees.
SELECT TenCongTy, LinhVuc FROM CongTy WHERE SoNhanVien > 150;

-- 8. List names of projects that started in 2023.
SELECT TenDuAn FROM DuAn WHERE YEAR(NgayBatDau) = 2023;

-- 9. Display skill names that belong to the 'Tool' type.
SELECT TenKyNang FROM KyNang WHERE LoaiKyNang = N'Công cụ';

-- 10. List full name and years of experience of experts with more than 5 years of experience.
SELECT HoTen, NamKinhNghiem FROM ChuyenGia WHERE NamKinhNghiem > 5;

-- 11. Display company name and address of companies in the 'Software Development' field.
SELECT TenCongTy, DiaChi FROM CongTy WHERE LinhVuc = N'Phát triển phần mềm';

-- 12. List names of projects with an end date in 2023.
SELECT TenDuAn FROM DuAn WHERE YEAR(NgayKetThuc) = 2023;

-- 13. Display name and level of skills in the ChuyenGia_KyNang table.
SELECT TenKyNang, CapDo
FROM ChuyenGia_KyNang CK
JOIN KyNang K ON CK.MaKyNang = K.MaKyNang;

-- 14. List expert ID and role in projects from the ChuyenGia_DuAn table.
SELECT MaChuyenGia, VaiTro FROM ChuyenGia_DuAn;

-- 15. Display full name and birthdate of experts born in 1990 or later.
SELECT HoTen, NgaySinh FROM ChuyenGia WHERE YEAR(NgaySinh) >= 1990;

-- 16. List company name and number of employees, sorted by number of employees in descending order.
SELECT TenCongTy, SoNhanVien FROM CongTy ORDER BY SoNhanVien DESC;

-- 17. Display project name and start date, sorted by start date in ascending order.
SELECT TenDuAn, NgayBatDau FROM DuAn ORDER BY NgayBatDau ASC;

-- 18. List skill names, displaying each name only once (remove duplicates).
SELECT DISTINCT TenKyNang FROM KyNang;

-- 19. Display full name and email of the first 5 experts in the list.
SELECT HoTen, Email FROM ChuyenGia ORDER BY MaChuyenGia LIMIT 5;

-- 20. List company names that contain the word 'Tech'.
SELECT TenCongTy FROM CongTy WHERE TenCongTy LIKE N'%Tech%';

-- 21. Display project name and status, excluding completed projects.
SELECT TenDuAn, TrangThai FROM DuAn WHERE TrangThai != N'Hoàn thành';

-- 22. List full name and major of experts, sorted by major and full name.
SELECT HoTen, ChuyenNganh FROM ChuyenGia ORDER BY ChuyenNganh ASC, HoTen ASC;

-- 23. Display company name and field, including only companies with 100 to 200 employees.
SELECT TenCongTy, LinhVuc FROM CongTy WHERE SoNhanVien BETWEEN 100 AND 200;

-- 24. List skill name and skill type, sorted by skill type in descending order and skill name in ascending order.
SELECT TenKyNang, LoaiKyNang FROM KyNang ORDER BY LoaiKyNang DESC, TenKyNang ASC;

-- 25. Display full name and phone number of experts whose emails use the 'email.com' domain.
SELECT HoTen, SoDienThoai FROM ChuyenGia WHERE Email LIKE '%@email.com';

-- 26. List all experts and sort by full name.
SELECT * FROM Experts
ORDER BY FullName;

-- 27. Display name and phone number of experts whose major is 'Phát triển phần mềm'.
SELECT FullName, Phone FROM Experts
WHERE Major = 'Phát triển phần mềm';

-- 28. List all companies with more than 100 employees.
SELECT * FROM Companies
WHERE NumberOfEmployees > 100;

-- 29. Display name and start date of projects that started in 2023.
SELECT ProjectName, StartDate FROM Projects
WHERE YEAR(StartDate) = 2023;

-- 30. List all skills and sort by skill name.
SELECT * FROM Skills
ORDER BY SkillName;

-- 31. Display name and email of experts who are under 35 years old (as of 2024).
SELECT FullName, Email FROM Experts
WHERE YEAR('2024-01-01') - YEAR(BirthDate) < 35;

-- 32. Display name and major of female experts.
SELECT FullName, Major FROM Experts
WHERE Gender = 'Female';

-- 33. List names of skills of type 'Công nghệ'.
SELECT SkillName FROM Skills
WHERE SkillType = 'Công nghệ';

-- 34. Display name and address of companies in the field of 'Phân tích dữ liệu'.
SELECT CompanyName, Address FROM Companies
WHERE Field = 'Phân tích dữ liệu';

-- 35. List names of projects with status 'Hoàn thành'.
SELECT ProjectName FROM Projects
WHERE Status = 'Hoàn thành';

-- 36. Display name and years of experience of experts, sorted by years of experience in descending order.
SELECT FullName, YearsOfExperience FROM Experts
ORDER BY YearsOfExperience DESC;

-- 37. List company names and number of employees, only showing companies with 100 to 200 employees.
SELECT CompanyName, NumberOfEmployees FROM Companies
WHERE NumberOfEmployees BETWEEN 100 AND 200;

-- 38. Display project name and end date of projects that ended in 2023.
SELECT ProjectName, EndDate FROM Projects
WHERE YEAR(EndDate) = 2023;

-- 39. List names and emails of experts whose names start with the letter 'N'.
SELECT FullName, Email FROM Experts
WHERE FullName LIKE 'N%';

-- 40. Display skill name and type, excluding skills of type 'Ngôn ngữ lập trình'.
SELECT SkillName, SkillType FROM Skills
WHERE SkillType != 'Ngôn ngữ lập trình';

-- 41. Display company name and field of operation, sorted by field.
SELECT CompanyName, Field FROM Companies
ORDER BY Field;

-- 42. Display name and major of male experts with more than 5 years of experience.
SELECT FullName, Major FROM Experts
WHERE Gender = 'Male' AND YearsOfExperience > 5;

-- 43. List all experts in the database.
SELECT * FROM Experts;

-- 44. Display name and email of all female experts.
SELECT FullName, Email FROM Experts
WHERE Gender = 'Female';

-- 45. List all companies and their number of employees, sorted by number of employees in descending order.
SELECT CompanyName, NumberOfEmployees FROM Companies
ORDER BY NumberOfEmployees DESC;

-- 46. Display all projects with status 'Đang thực hiện'.
SELECT * FROM Projects
WHERE Status = 'Đang thực hiện';

-- 47. List all skills of type 'Ngôn ngữ lập trình'.
SELECT * FROM Skills
WHERE SkillType = 'Ngôn ngữ lập trình';

-- 48. Display name and major of experts with more than 8 years of experience.
SELECT FullName, Major FROM Experts
WHERE YearsOfExperience > 8;

-- 49. List all projects of the company with CompanyID = 1.
SELECT * FROM Projects
WHERE CompanyID = 1;

-- 50. Count the number of experts in each major.
SELECT Major, COUNT(*) AS NumExperts FROM Experts
GROUP BY Major;

-- 51. Find the expert with the highest number of years of experience.
SELECT FullName, YearsOfExperience FROM Experts
ORDER BY YearsOfExperience DESC
LIMIT 1;

-- 52. List total number of employees for each company with more than 100 employees. Sort by employee count ascending.
SELECT CompanyName, NumberOfEmployees FROM Companies
WHERE NumberOfEmployees > 100
ORDER BY NumberOfEmployees ASC;

-- 53. Determine the number of 'Đang thực hiện' projects per company with more than one. Sort descending.
SELECT c.CompanyName, COUNT(p.ProjectID) AS NumProjects
FROM Companies c
JOIN Projects p ON c.CompanyID = p.CompanyID
WHERE p.Status = 'Đang thực hiện'
GROUP BY c.CompanyID, c.CompanyName
HAVING COUNT(p.ProjectID) > 1
ORDER BY NumProjects DESC;

-- 54. Count experts per skill with level >= 4, only include skills with > 2 experts. Sort by skill name.
SELECT s.SkillName, COUNT(DISTINCT es.ExpertID) AS NumExperts
FROM ExpertSkills es
JOIN Skills s ON es.SkillID = s.SkillID
WHERE es.Level >= 4
GROUP BY s.SkillID, s.SkillName
HAVING COUNT(DISTINCT es.ExpertID) > 2
ORDER BY s.SkillName;

-- 55. List companies in 'Điện toán đám mây' and total employees, sorted ascending.
SELECT CompanyName, NumberOfEmployees FROM Companies
WHERE Field = 'Điện toán đám mây'
ORDER BY NumberOfEmployees ASC;

-- 56. List companies with 50–150 employees and their counts, sorted by name.
SELECT CompanyName, NumberOfEmployees FROM Companies
WHERE NumberOfEmployees BETWEEN 50 AND 150
ORDER BY CompanyName;

-- 57. Number of skills for experts with at least one skill of level 5, sorted by expert name.
SELECT e.FullName, COUNT(es.SkillID) AS NumSkills
FROM Experts e
JOIN ExpertSkills es ON e.ExpertID = es.ExpertID
WHERE e.ExpertID IN (
    SELECT ExpertID FROM ExpertSkills WHERE Level = 5
)
GROUP BY e.ExpertID, e.FullName
ORDER BY e.FullName;

-- 58. (Same as 54) Count experts per skill with level >= 4 and >2 experts.
SELECT s.SkillName, COUNT(DISTINCT es.ExpertID) AS NumExperts
FROM ExpertSkills es
JOIN Skills s ON es.SkillID = s.SkillID
WHERE es.Level >= 4
GROUP BY s.SkillID, s.SkillName
HAVING COUNT(DISTINCT es.ExpertID) > 2
ORDER BY s.SkillName;

-- 59. Average skill level of experts in 'Phát triển phần mềm' with average > 3, sorted descending.
SELECT e.FullName, AVG(es.Level) AS AvgLevel
FROM Experts e
JOIN ExpertSkills es ON e.ExpertID = es.ExpertID
WHERE e.Major = 'Phát triển phần mềm'
GROUP BY e.ExpertID, e.FullName
HAVING AVG(es.Level) > 3
ORDER BY AvgLevel DESC;

