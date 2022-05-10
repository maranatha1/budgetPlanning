using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public class VehicleBLL
    {
        VehicleDAL vehicle = new VehicleDAL();
        public double CalculateTotalMonthlyCost()
        {
            return vehicle.CalculateTotalMonthlyCost();
        }
    }
}
