﻿using FundTrack.DAL.Abstract;
using FundTrack.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace FundTrack.DAL.Concrete
{
    /// <summary>
    /// Repository for Donation entity
    /// </summary>
    public class DonationRepository: IDonationRepository
    {
        private readonly FundTrackContext _context;

        /// <summary>
        /// Creates instance of DonateRepository
        /// </summary>
        /// <param name="context">Context to create instance</param>
        public DonationRepository(FundTrackContext context)
        {
            _context = context;
        }

        /// <summary>
        /// Creates new record in Donation table
        /// </summary>
        /// <param name="item">Item to add</param>
        /// <returns>Created item</returns>
        public Donation Create(Donation item)
        {
            var created = _context.Donations.Add(item);
            return created.Entity;
        }

        /// <summary>
        /// Read all Donations in database
        /// </summary>
        /// <returns> IEnumerable of donations</returns>
        public IEnumerable<Donation> Read()
        {
            return _context.Donations;
        }
    }
}
