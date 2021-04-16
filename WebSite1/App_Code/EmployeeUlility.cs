using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EmployeeUlility
/// </summary>
public class EmployeeUlility
{

    public static employee GetEmployeeByName(string name)
    {
        MyWebDBEntities db = new MyWebDBEntities();
        employee Employee = db.employees.SingleOrDefault(emp => emp.employee_name == name);
        return Employee;
    }


    public static List<employee> GetAllEmployer()
    {
        MyWebDBEntities db = new MyWebDBEntities();
        return db.employees.ToList();
    }

    public static employee GetEmployee(int number)
    {
        MyWebDBEntities db = new MyWebDBEntities();
        employee Employee = db.employees.SingleOrDefault(emp => emp.employee_number == number);
        return Employee;
    }

    public static void AddEmployee(employee Employee)
    {
        MyWebDBEntities db = new MyWebDBEntities();
        db.employees.Add(Employee);
        db.SaveChanges();
    }

    public static void UpdateEmployee(employee Employee)
    {
        MyWebDBEntities db = new MyWebDBEntities();
        db.Entry(Employee).State = System.Data.Entity.EntityState.Modified;
        db.SaveChanges();
    }

    public static void DeletEmployee(int number)
    {
        MyWebDBEntities db = new MyWebDBEntities();
        employee Employee = db.employees.SingleOrDefault(emp => emp.employee_number == number);
        db.employees.Remove(Employee);
        db.SaveChanges();
    }

    public static List<employee> GetEmployeesByName(string name)
    {
        MyWebDBEntities db = new MyWebDBEntities();
        return db.employees.Where(emp => emp.employee_name.Contains(name)).ToList();
    }
}