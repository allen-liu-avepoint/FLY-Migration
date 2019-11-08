// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.Migration.Api.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    public partial class SlackConnectionSummaryModel
    {
        /// <summary>
        /// Initializes a new instance of the SlackConnectionSummaryModel
        /// class.
        /// </summary>
        public SlackConnectionSummaryModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the SlackConnectionSummaryModel
        /// class.
        /// </summary>
        /// <param name="name">Name of the connection</param>
        /// <param name="workspaceDomain">Workspace Domain</param>
        /// <param name="id">Id of the connection</param>
        /// <param name="status">The status of the migration connection.
        /// Possible values includes: ['Connected', 'Disconnected']</param>
        public SlackConnectionSummaryModel(string name = default(string), string workspaceDomain = default(string), string id = default(string), string status = default(string))
        {
            Name = name;
            WorkspaceDomain = workspaceDomain;
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
        /// Gets or sets workspace Domain
        /// </summary>
        [JsonProperty(PropertyName = "workspaceDomain")]
        public string WorkspaceDomain { get; set; }

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
