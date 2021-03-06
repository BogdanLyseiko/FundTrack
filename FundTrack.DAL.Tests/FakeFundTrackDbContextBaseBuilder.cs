﻿using FundTrack.DAL.Concrete;
using Microsoft.EntityFrameworkCore;
using System;

namespace FundTrack.DAL.Tests
{
    /// <summary>
    /// Class for creating fake data base context for testing
    /// </summary>
    public sealed class FakeFundTrackDbContextBaseBuilder : FakeDbContextBuilder
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="FakeFundTrackDbContextBaseBuilder"/> class.
        /// </summary>
        public FakeFundTrackDbContextBaseBuilder()
        {
            var options = new DbContextOptionsBuilder<FundTrackContext>()
                 .UseInMemoryDatabase(Guid.NewGuid().ToString())
                 .Options;
            base.CreateDbContext(options);
        }

        /// <summary>
        /// Sets the event images.
        /// </summary>
        public override void SetEventImages()
        {
            context.EventImages.Add(new Entities.EventImage { Id = 1, EventId = 1, ImageUrl = "EventId = 1" });
            context.SaveChanges();
        }

        /// <summary>
        /// Sets the events.
        /// </summary>
        public override void SetEvents()
        {
            context.Events.Add(new Entities.Event { Id = 1, Description = "Event Description", OrganizationId = 1 });
            context.SaveChanges();
        }

        /// <summary>
        /// Sets the organizations.
        /// </summary>
        public override void SetOrganizations()
        {
            context.Organizations.Add(new Entities.Organization { Id = 1, Name = "Name 1", Description = "Description 1", });
            context.Organizations.Add(new Entities.Organization { Id = 2, Name = "Name 2", Description = "Description 2", });
            context.Organizations.Add(new Entities.Organization { Id = 3, Name = "Name 3", Description = "Description 3", });
            context.SaveChanges();
        }


        /// <summary>
        /// Sets the phones.
        /// </summary>
        public override void SetPhones()
        {
            context.Phones.Add(new Entities.Phone { Id = 1, Number = "0993108753", UserId = 1 });
            context.Phones.Add(new Entities.Phone { Id = 2, Number = "0993108754", UserId = 2 });
            context.Phones.Add(new Entities.Phone { Id = 3, Number = "0993108755", UserId = 3 });
            context.SaveChanges();
        }

        public override void SetTargets()
        {
            context.Targets.Add(new Entities.Target { Id = 1, TargetName = "Медикаменти", OrganizationId = 1 });
            context.Targets.Add(new Entities.Target { Id = 2, TargetName = "Харчі", OrganizationId = 1 });
            context.Targets.Add(new Entities.Target { Id = 3, TargetName = "Одяг", OrganizationId = 2 });
            context.SaveChanges();
        }
    }
}
