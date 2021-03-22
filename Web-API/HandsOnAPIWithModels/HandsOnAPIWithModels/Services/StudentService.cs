using HandsOnAPIWithModels.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HandsOnAPIWithModels.Services
{
    public class StudentService : IStudentService
    {
        public static List<Student> studentslist = new List<Student>()
        {
            new Student(){Sid=1,Sname="Rohan",Age=10}
        };
        public bool AddStudent(Student student)
        {
            studentslist.Add(student);
            return true;
        }

        public bool DeleteStudent(int sId)
        {
            Student student = studentslist.SingleOrDefault(s => s.Sid == sId);
            studentslist.Remove(student);
            return true;
        }

        public Student GetStudent(int sId)
        {
            Student student = studentslist.SingleOrDefault(s => s.Sid == sId);
            return student;
        }

        public List<Student> GetStudents()
        {
            return studentslist;
        }
    }
}
