// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.Migration.Api.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    public partial class DatabaseSummaryModel
    {
        /// <summary>
        /// Initializes a new instance of the DatabaseSummaryModel class.
        /// </summary>
        public DatabaseSummaryModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the DatabaseSummaryModel class.
        /// </summary>
        /// <param name="id">Id of the database</param>
        /// <param name="server">database server</param>
        /// <param name="name">Name of the database</param>
        public DatabaseSummaryModel(string id = default(string), string server = default(string), string name = default(string))
        {
            Id = id;
            Server = server;
            Name = name;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets id of the database
        /// </summary>
        [JsonProperty(PropertyName = "id")]
        public string Id { get; set; }

        /// <summary>
        /// Gets or sets database server
        /// </summary>
        [JsonProperty(PropertyName = "server")]
        public string Server { get; set; }

        /// <summary>
        /// Gets or sets name of the database
        /// </summary>
        [JsonProperty(PropertyName = "name")]
        public string Name { get; set; }

    }
}
