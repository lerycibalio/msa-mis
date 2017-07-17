﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MSAMISUserInterface {
    public class Data {

        
        
        public static void InitData() {
            Payroll.BasicPay = 340.00;
            initRates();
            initHourCosts();
        }

        private static void initHourCosts() {
            Payroll.hourcosts.Add("nsu_proper_day_normal", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_proper_day_special", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_proper_day_regular", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_proper_night_normal", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_proper_night_special", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_proper_night_regular", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_overtime_day_normal", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_overtime_day_special", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_overtime_day_regular", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_overtime_night_normal", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_overtime_night_special", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("nsu_overtime_night_regular", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_proper_day_normal", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_proper_day_special", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_proper_day_regular", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_proper_night_normal", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_proper_night_special", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_proper_night_regular", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_overtime_day_normal", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_overtime_day_special", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_overtime_day_regular", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_overtime_night_normal", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_overtime_night_special", new Payroll.HourCostPair());
            Payroll.hourcosts.Add("sun_overtime_night_regular", new Payroll.HourCostPair());
        }

        public static void UpdateExipiry() {

        }

        public static void initRates () {
            Payroll.rates.Add("nsu_proper_day_normal", 1);
            Payroll.rates.Add("nsu_proper_day_special", 1.3);
            Payroll.rates.Add("nsu_proper_day_regular", 2);
            Payroll.rates.Add("nsu_proper_night_normal", 1.1);
            Payroll.rates.Add("nsu_proper_night_special", 1.43);
            Payroll.rates.Add("nsu_proper_night_regular", 2.2);
            Payroll.rates.Add("nsu_overtime_day_normal", 1.25);
            Payroll.rates.Add("nsu_overtime_day_special", 1.69);
            Payroll.rates.Add("nsu_overtime_day_regular", 2.6);
            Payroll.rates.Add("nsu_overtime_night_normal", 1.375);
            Payroll.rates.Add("nsu_overtime_night_special", 1.859);
            Payroll.rates.Add("nsu_overtime_night_regular", 2.86);
            Payroll.rates.Add("sun_proper_day_normal", 1.3);
            Payroll.rates.Add("sun_proper_day_special", 1.5);
            Payroll.rates.Add("sun_proper_day_regular", 2.6);
            Payroll.rates.Add("sun_proper_night_normal", 1.43);
            Payroll.rates.Add("sun_proper_night_special", 1.65);
            Payroll.rates.Add("sun_proper_night_regular", 2.86);
            Payroll.rates.Add("sun_overtime_day_normal", 1.625);
            Payroll.rates.Add("sun_overtime_day_special", 1.95);
            Payroll.rates.Add("sun_overtime_day_regular", 3.38);
            Payroll.rates.Add("sun_overtime_night_normal", 1.859);
            Payroll.rates.Add("sun_overtime_night_special", 2.145);
            Payroll.rates.Add("sun_overtime_night_regular", 3.718);

        }
    }
}
