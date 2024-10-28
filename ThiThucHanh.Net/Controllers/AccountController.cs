using Microsoft.AspNetCore.Mvc;

namespace ThiThucHanh.Net.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Logout()
        {
            return RedirectToAction("Index", "Login", new {Area = "Admin"});
        }
    }
}
