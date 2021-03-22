using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HandsOnAPIWithModels.Models;
using HandsOnAPIWithModels.Services;
namespace HandsOnAPIWithModels.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private StudentService studentService;
        public StudentController()
        {
            studentService = new StudentService();
        }
        [Route("GetAllStudents")]
        public List<Student> Get()
        {
            return studentService.GetStudents();
        }
        [Route("Get/{Id}")]
        public Student Get(int Id)
        {
            return studentService.GetStudent(Id);
        }
        [Route("Delete/{Id}")]
        public string Delete(int Id)
        {
            if (studentService.DeleteStudent(Id))
            {
                return "Record Deleted";
            }
            else
                return "Invalid ID";
        }
        [Route("Add")]
        public string Post(Student student)
        {
            studentService.AddStudent(student);
            return "Student Added";
        }
    }
}
