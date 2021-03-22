using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HandsOnAPIWithModels.Models;
namespace HandsOnAPIWithModels.Services
{
    public interface IStudentService
    {
        List<Student> GetStudents();
        Student GetStudent(int sId);
        bool AddStudent(Student student);
        bool DeleteStudent(int sId);
    }
}
