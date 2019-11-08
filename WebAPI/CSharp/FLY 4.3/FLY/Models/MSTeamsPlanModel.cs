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

    public partial class MSTeamsPlanModel
    {
        /// <summary>
        /// Initializes a new instance of the MSTeamsPlanModel class.
        /// </summary>
        public MSTeamsPlanModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the MSTeamsPlanModel class.
        /// </summary>
        public MSTeamsPlanModel(MSTeamsPlanSettingsModel settings, MSTeamsMappingModel mappings)
        {
            Settings = settings;
            Mappings = mappings;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "settings")]
        public MSTeamsPlanSettingsModel Settings { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "mappings")]
        public MSTeamsMappingModel Mappings { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (Settings == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Settings");
            }
            if (Mappings == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Mappings");
            }
            if (Settings != null)
            {
                Settings.Validate();
            }
            if (Mappings != null)
            {
                Mappings.Validate();
            }
        }
    }
}
