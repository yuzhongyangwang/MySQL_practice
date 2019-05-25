#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
select companyId,avg(salary) from Employee group by companyId;
select a.companyName,b.avgsalary from Company a,(select companyId,avg(salary) avgsalary from Employee group by companyId) b where a.id = b.companyId;