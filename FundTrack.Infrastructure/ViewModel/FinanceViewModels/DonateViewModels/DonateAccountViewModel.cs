﻿using System;
using System.Collections.Generic;
using System.Text;

namespace FundTrack.Infrastructure.ViewModel.FinanceViewModels.DonateViewModels
{
    public class DonateAccountViewModel
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public int BankAccountId { get; set; }
        public int MerchantId { get; set; }
        public string MerchantPassword { get; set; }
    }
}
