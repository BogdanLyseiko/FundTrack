﻿using FundTrack.BLL.Abstract;
using FundTrack.DAL.Abstract;
using FundTrack.Infrastructure.ViewModel;
using System.Linq;
using FundTrack.DAL.Entities;
using FundTrack.Infrastructure.ViewModel.EditOrganizationViewModels;
using System.Collections.Generic;

namespace FundTrack.BLL.Concrete
{
    /// <summary>
    /// Service to work with organization profile
    /// </summary>
    public class OrganizationProfileService : IOrganizationProfileService
    {
        private readonly IUnitOfWork _unitOfWork;
        
        /// <summary>
        /// Creates new instance of OrganizationProfileService
        /// </summary>
        /// <param name="unitOfWork">Unit of work</param>
        public OrganizationProfileService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        /// <summary>
        /// Gets general information about organization by its id
        /// </summary>
        /// <param name="id"> Id of organization </param>
        /// <returns>OrganizationViewModel</returns>
        public OrganizationViewModel GetOrganizationById(int id)
        {
            var organization = _unitOfWork.OrganizationRepository.Get(id);
            var result = new OrganizationViewModel
            {
                Id = organization.Id,
                Name = organization.Name,
                Description = organization.Description,
                IsBanned = false
            };
            return result;
        }

        /// <summary>
        /// Edits description of organization
        /// </summary>
        /// <param name="item">OrganizationViewModel to edit</param>
        /// <returns>Edited OrganizationViewModel</returns>
        public OrganizationViewModel EditDescription(OrganizationViewModel item)
        {
            var organizationToUpdate = new Organization { Id = item.Id, Name = item.Name, Description = item.Description };
            var update = _unitOfWork.OrganizationRepository.Update(organizationToUpdate);
            _unitOfWork.SaveChanges();
            var result = new OrganizationViewModel { Id = update.Id, Description = update.Description, Name = update.Name, IsBanned = false };
            return result;
        }

        /// <summary>
        /// Gets all addresses of organization
        /// </summary>
        /// <param name="id"> Id of needed organization </param>
        /// <returns>Returs organization id and its addresses</returns>
        public EditAddressViewModel GetOrgAddress(int id)
        {
            var addressOrg = _unitOfWork.OrganizationAddressRepository.Read().Where(a => a.OrgId == id);
            List<Address> addresses = new List<Address>();
            foreach(var orgAddress in addressOrg)
            {
                addresses.Add(_unitOfWork.AddressRepository.Read().FirstOrDefault(a => a.Id == orgAddress.AddressId));
            }
            var result = new EditAddressViewModel { OrgId = id, ErrorMessage = string.Empty, Addresses = new AddressViewModel[addresses.Count()] };
            int iterator = 0;
            foreach (var address in addresses)
            {
                result.Addresses[iterator] = new AddressViewModel
                {
                    Id = address.Id,
                    City = address.City,
                    Country = address.Country,
                    House = address.Building,
                    Street = address.Street
                };
                iterator++;
            }
            return result;
        }

        /// <summary>
        /// Edits organization address
        /// </summary>
        /// <param name="item">Address to edit</param>
        /// <returns>Edited list of addresses</returns>
        public EditAddressViewModel EditAddress(AddressViewModel item)
        {
            var addressToUpdate = new Address
            {
                Id = item.Id,
                Building = item.House,
                City = item.City,
                Country = item.Country,
                Street = item.Street
            };
            var result = _unitOfWork.AddressRepository.Update(addressToUpdate);
            _unitOfWork.SaveChanges();
            item = new AddressViewModel
            {
                Id = result.Id,
                City = result.City,
                Country = result.Country,
                House = result.Building,
                Street = result.Street
            };
            var orgAddress = _unitOfWork.OrganizationAddressRepository.Read().FirstOrDefault(o => o.AddressId == item.Id);
            return GetOrgAddress(orgAddress.OrgId);
        }

        /// <summary>
        /// Adds organization address
        ///</summary>
        /// <param name="addresses">Address to add</param>
        /// <returns>Organization Addresses</returns>
        public EditAddressViewModel AddAddresses(EditAddressViewModel address)
        {
            var addressToAdd = new Address
            {
                Building = address.Addresses.First().House,
                Street = address.Addresses.First().Street,
                City = address.Addresses.First().City,
                Country = address.Addresses.First().Country
            };
            var addedAddress = _unitOfWork.AddressRepository.Create(addressToAdd);
            var orgAddress = new OrgAddress { AddressId = addedAddress.Id, OrgId = address.OrgId };
            _unitOfWork.OrganizationAddressRepository.Create(orgAddress);
            _unitOfWork.SaveChanges();
            return GetOrgAddress(address.OrgId);
        }

        /// <summary>
        /// Deletes address by its id
        /// </summary>
        /// <param name="id">Id of address to delete</param>
        public void DeleteAddress(int id)
        {           
            var addressToDelete = _unitOfWork.AddressRepository.Get(id);
            _unitOfWork.AddressRepository.Delete(addressToDelete.Id);
            _unitOfWork.SaveChanges();                      
        }

        private IEnumerable<OrganizationViewModel> convertOrganizationsToOrganizationViewModel(IEnumerable<Organization> organizations)
        {
            return organizations.Select(x => convertOrganizationToOrganizationViewModel(x));
        }

        private OrganizationViewModel convertOrganizationToOrganizationViewModel(Organization organization)
        {
            return new OrganizationViewModel
            {
                Description = organization.Description,
                LogoUrl = organization.LogoUrl,
                Name = organization.Name,
                Id = organization.Id
            };
        }

        public IEnumerable<OrganizationViewModel> GetAllOrganizations()
        {
            var allOrganizations = _unitOfWork.OrganizationRepository.Read();
            return convertOrganizationsToOrganizationViewModel(allOrganizations);
        }
    }
}
