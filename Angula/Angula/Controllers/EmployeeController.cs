using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Angula.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Angula.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly EmployeeContext _employeeContext;
        public EmployeeController(EmployeeContext emloyeeContext)
        {
            _employeeContext = emloyeeContext;
        }
        [HttpGet]
        public IEnumerable<Employee> Get()
        {
            var data = _employeeContext.Employee.ToList();
            return data;
        }
        [HttpPost]
        public IActionResult Post([FromBody] Employee obj)
        {
            var data = _employeeContext.Employee.Add(obj);
            _employeeContext.SaveChanges();
            return Ok();
        }
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] Employee obj)
        {
            var data = _employeeContext.Employee.Update(obj);
            _employeeContext.SaveChanges();
            return Ok();
        }
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            var data = _employeeContext.Employee.Where(a => a.EmpId == id).FirstOrDefault();
            _employeeContext.Employee.Remove(data);
            _employeeContext.SaveChanges();
            return Ok();

        }
    }
}
