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

    public partial class SharePointPlanSettingsModel
    {
        /// <summary>
        /// Initializes a new instance of the SharePointPlanSettingsModel
        /// class.
        /// </summary>
        public SharePointPlanSettingsModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the SharePointPlanSettingsModel
        /// class.
        /// </summary>
        /// <param name="nameLabel">Large migration projects are often phased
        /// over several waves, each containing multiple plans.
        /// To easily generate migration reports for each project or wave, we
        /// recommend the Example name format Business Unit_Wave_Plan</param>
        /// <param name="migrationMode">The High Speed method is recommended
        /// for most migrations. Large volumes of files and folders can be
        /// quickly migrated into Office 365. Content is first sent to Azure
        /// storage, then imported into Office 365. Properties, metadata, and
        /// site structure are migrated directly using the client-side object
        /// model (CSOM). No need to bring your own Azure - we use the default
        /// Office 365 storage. If you have additional security requirements,
        /// configure your own Azure storage location.
        /// The Classic method is only recommended for limited migration
        /// scopes, or for customers in datacenters that do not have access to
        /// Microsoft's Migration APIs (e.g. 21Vianet). This method migrates
        /// data directly to Office 365 using the client-side object model
        /// (CSOM). All sites, site structure, security, properties, and
        /// settings are migrated in addition to your content libraries.
        /// Possible values include: 'HighSpeed', 'CSOM'</param>
        /// <param name="policyId">the id of migration policy</param>
        /// <param name="databaseId">the id of migration database</param>
        /// <param name="schedule">the schedule for the migration</param>
        public SharePointPlanSettingsModel(PlanNameLabel nameLabel, string migrationMode = default(string), string policyId = default(string), string databaseId = default(string), ScheduleModel schedule = default(ScheduleModel))
        {
            MigrationMode = migrationMode;
            NameLabel = nameLabel;
            PolicyId = policyId;
            DatabaseId = databaseId;
            Schedule = schedule;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets the High Speed method is recommended for most
        /// migrations. Large volumes of files and folders can be quickly
        /// migrated into Office 365. Content is first sent to Azure storage,
        /// then imported into Office 365. Properties, metadata, and site
        /// structure are migrated directly using the client-side object model
        /// (CSOM). No need to bring your own Azure - we use the default Office
        /// 365 storage. If you have additional security requirements,
        /// configure your own Azure storage location.
        /// The Classic method is only recommended for limited migration
        /// scopes, or for customers in datacenters that do not have access to
        /// Microsoft's Migration APIs (e.g. 21Vianet). This method migrates
        /// data directly to Office 365 using the client-side object model
        /// (CSOM). All sites, site structure, security, properties, and
        /// settings are migrated in addition to your content libraries.
        /// Possible values include: 'HighSpeed', 'CSOM'
        /// </summary>
        [JsonProperty(PropertyName = "migrationMode")]
        public string MigrationMode { get; set; }

        /// <summary>
        /// Gets or sets large migration projects are often phased over several
        /// waves, each containing multiple plans.
        /// To easily generate migration reports for each project or wave, we
        /// recommend the Example name format Business Unit_Wave_Plan
        /// </summary>
        [JsonProperty(PropertyName = "nameLabel")]
        public PlanNameLabel NameLabel { get; set; }

        /// <summary>
        /// Gets or sets the id of migration policy
        /// </summary>
        [JsonProperty(PropertyName = "policyId")]
        public string PolicyId { get; set; }

        /// <summary>
        /// Gets or sets the id of migration database
        /// </summary>
        [JsonProperty(PropertyName = "databaseId")]
        public string DatabaseId { get; set; }

        /// <summary>
        /// Gets or sets the schedule for the migration
        /// </summary>
        [JsonProperty(PropertyName = "schedule")]
        public ScheduleModel Schedule { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (NameLabel == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "NameLabel");
            }
            if (NameLabel != null)
            {
                NameLabel.Validate();
            }
            if (Schedule != null)
            {
                Schedule.Validate();
            }
        }
    }
}
