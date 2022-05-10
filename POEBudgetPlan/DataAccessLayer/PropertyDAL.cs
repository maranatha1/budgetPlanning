using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
   public class PropertyDAL:ExpenditureDAL
    {
        public double RentalAmount { get; set; }
        public double PurchasePrice { get; set; }
        public double TotalDeposit { get; set; }
        public double InterestRate { get; set; }
        public int NumberOfMonthsToRepay { get; set; }

        public double CalculateMonthlyLoanRepayment()
        {
            if (NumberOfMonthsToRepay >= 240 && NumberOfMonthsToRepay <= 360)
            {
                double principalAmount = PurchasePrice - TotalDeposit;
                double interest = InterestRate / 100;
                int numberOfMonths = NumberOfMonthsToRepay / 12;
                double a = principalAmount * (1 + (interest * numberOfMonths));
                double monthlyPayment = a / 12;

                return monthlyPayment;
            }
            else
            {

                return 0;
            }
        }

        public double CalculateMonthlyIncomeThird()
        {
            double third = 1.0 / 3.0;
            return GrossMonthlyIncome * third;
        }
        public bool CompareLoanRepayment()
        {
            if (CalculateMonthlyLoanRepayment() < CalculateMonthlyIncomeThird())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
