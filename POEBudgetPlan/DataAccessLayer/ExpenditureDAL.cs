using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
   public class ExpenditureDAL
    {
        VehicleDAL vehicle = new VehicleDAL();
        public double GrossMonthlyIncome { get; set; }
        public double MonthlyTaxDeducted { get; set; }
        public double Grocery { get; set; }
        public double WaterAndLight { get; set; }
        public double TravelCost { get; set; }
        public double Cellphone { get; set; }
        public double OtherExpense { get; set; }

        public double CalculateTotalAmountAfterExpense()
        {
            double totalAmountAfterExpense = GrossMonthlyIncome - MonthlyTaxDeducted - Grocery - WaterAndLight - TravelCost - Cellphone - OtherExpense;

            return totalAmountAfterExpense;
        }

        public double calculateAvailableMonthlyMoney()
        {
            double monthlyAvailableAmount = CalculateTotalAmountAfterExpense() - vehicle.CalculateTotalMonthlyCost();
            return monthlyAvailableAmount;
        }
    }
}
