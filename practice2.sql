# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

select a.* from Employee as a where salary = (select max(salary) from Employee where a.companyId = companyId)

select a.companyName,b.name from Company a,(select a.* from Employee as a where salary = (select max(salary) from Employee where a.companyId = companyId)) b where a.id = b.companyId;