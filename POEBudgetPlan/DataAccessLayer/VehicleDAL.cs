using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
   public class VehicleDAL
    {
        public string ModelMake { get; set; }
        public double PurchasePrice { get; set; }
        public double TotalDeposit { get; set; }
        public double InterestRate { get; set; }
        public double InsurancePremium { get; set; }

        public double CalculateTotalMonthlyCost()
        {
            int paymentPeriod = 12 * 5;
            double interest = PurchasePrice * (InterestRate / 100);

            double totalPayment = ((PurchasePrice + interest) / paymentPeriod) + InsurancePremium;
            return totalPayment;

        }
    }
}
