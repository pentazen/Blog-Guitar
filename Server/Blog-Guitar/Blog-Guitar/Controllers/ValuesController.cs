using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Blog_Guitar.Model.Models;
using Blog_Guitar.Service;
namespace Blog_Guitar.Controllers
{
    public class ValuesController : ApiController
    {
        NhanService Service = new NhanService();
        // GET api/values
        public List<BaiHat> Get()
        {
            return Service.GetAll().ToList();
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
