using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
   public class PropertyBLL
    {
        public PropertyDAL property = new PropertyDAL();

        public double CalculateMonthlyLoanRepayment()
        {
            return property.CalculateMonthlyLoanRepayment();
        }
        public bool CompareLoanRepayment()
        {
            return property.CompareLoanRepayment();
        }
    }
}
