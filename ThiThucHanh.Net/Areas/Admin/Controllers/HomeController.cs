using Microsoft.AspNetCore.Mvc;

namespace ThiThucHanh.Net.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
