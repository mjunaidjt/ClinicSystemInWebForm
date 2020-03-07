using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ClinicSystemInWebForm.Startup))]
namespace ClinicSystemInWebForm
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
