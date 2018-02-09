using System.Web;
using System.Web.Optimization;

namespace ProyectoIngenieria
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {

            //Core JS Libraries
            bundles.Add(new ScriptBundle("~/bundles/corejs").Include(
                        "~/Scripts/jquery-3.2.1.min.js",
                        "~/Scripts/bootstrap.min.js",
                        "~/Scripts/material.min.js",
                        "~/Scripts/perfect-scrollbar.jquery.min.js",
                        "~/Scripts/bootstrap - notify.js",
                        "~/Scripts/chartist.min.js",
                        "~/Scripts/arrive.min.js"));

            //Bundles for CSS
            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.min.css",
                      "~/Content/material-dashboard.css",
                      "~/Content/demo.css"));
        }
    }
}
