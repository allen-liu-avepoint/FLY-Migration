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

    public partial class FSPlanModel
    {
        /// <summary>
        /// Initializes a new instance of the FSPlanModel class.
        /// </summary>
        public FSPlanModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the FSPlanModel class.
        /// </summary>
        public FSPlanModel(FSMappingModel mappings, FSPlanSettingsModel settings)
        {
            Mappings = mappings;
            Settings = settings;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "mappings")]
        public FSMappingModel Mappings { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "settings")]
        public FSPlanSettingsModel Settings { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (Mappings == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Mappings");
            }
            if (Settings == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Settings");
            }
            if (Mappings != null)
            {
                Mappings.Validate();
            }
            if (Settings != null)
            {
                Settings.Validate();
            }
        }
    }
}
