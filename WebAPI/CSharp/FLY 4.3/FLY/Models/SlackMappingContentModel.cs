// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.Migration.Api.Models
{
    using Microsoft.Rest;
    using Newtonsoft.Json;
    using System.Linq;

    public partial class SlackMappingContentModel
    {
        /// <summary>
        /// Initializes a new instance of the SlackMappingContentModel class.
        /// </summary>
        public SlackMappingContentModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the SlackMappingContentModel class.
        /// </summary>
        public SlackMappingContentModel(string sourceChannelName, SlackMigrationMSTeamsObject destination)
        {
            SourceChannelName = sourceChannelName;
            Destination = destination;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "sourceChannelName")]
        public string SourceChannelName { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "destination")]
        public SlackMigrationMSTeamsObject Destination { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (SourceChannelName == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "SourceChannelName");
            }
            if (Destination == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Destination");
            }
            if (Destination != null)
            {
                Destination.Validate();
            }
        }
    }
}
