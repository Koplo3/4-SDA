using SRAD_System.DLL.DataSradTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SRAD_System.BLL
{
    public class creator { 
        public Application FactoryMethod(int id)
        {
            ApplicationTableAdapter person = new ApplicationTableAdapter();
            string type = person.getType(id).ToString();
            Agent ag = new Agent();
            Student stud = new Student();
            if (type.Equals("student"))
            {
                return stud;
            }
            else if (type.Equals("Agent"))
            {
                return ag;
            }
            else
            {
                return null;
            }
        }
    }

}