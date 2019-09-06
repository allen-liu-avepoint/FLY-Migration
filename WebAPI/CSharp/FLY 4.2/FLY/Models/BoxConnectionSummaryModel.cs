// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.Migration.Api.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    public partial class BoxConnectionSummaryModel
    {
        /// <summary>
        /// Initializes a new instance of the BoxConnectionSummaryModel class.
        /// </summary>
        public BoxConnectionSummaryModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the BoxConnectionSummaryModel class.
        /// </summary>
        /// <param name="name">Name of the connection</param>
        /// <param name="enterpriseID">Enterprise ID</param>
        /// <param name="emailAddress">Email Address</param>
        /// <param name="authenticationType">Authentication Type, Possible
        /// Values include: ['User Authentication', 'Server
        /// Authentication']</param>
        /// <param name="id">Id of the connection</param>
        /// <param name="status">The status of the migration connection.
        /// Possible values includes: ['Connected', 'Disconnected']</param>
        public BoxConnectionSummaryModel(string name = default(string), string enterpriseID = default(string), string emailAddress = default(string), string authenticationType = default(string), string id = default(string), string status = default(string))
        {
            Name = name;
            EnterpriseID = enterpriseID;
            EmailAddress = emailAddress;
            AuthenticationType = authenticationType;
            Id = id;
            Status = status;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets name of the connection
        /// </summary>
        [JsonProperty(PropertyName = "name")]
        public string Name { get; set; }

        /// <summary>
        /// Gets or sets enterprise ID
        /// </summary>
        [JsonProperty(PropertyName = "enterpriseID")]
        public string EnterpriseID { get; set; }

        /// <summary>
        /// Gets or sets email Address
        /// </summary>
        [JsonProperty(PropertyName = "emailAddress")]
        public string EmailAddress { get; set; }

        /// <summary>
        /// Gets or sets authentication Type, Possible Values include: ['User
        /// Authentication', 'Server Authentication']
        /// </summary>
        [JsonProperty(PropertyName = "authenticationType")]
        public string AuthenticationType { get; set; }

        /// <summary>
        /// Gets or sets id of the connection
        /// </summary>
        [JsonProperty(PropertyName = "id")]
        public string Id { get; set; }

        /// <summary>
        /// Gets or sets the status of the migration connection. Possible
        /// values includes: ['Connected', 'Disconnected']
        /// </summary>
        [JsonProperty(PropertyName = "status")]
        public string Status { get; set; }

    }
}
