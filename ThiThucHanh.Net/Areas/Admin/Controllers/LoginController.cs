using Microsoft.AspNetCore.Mvc;
using ThiThucHanh.Net.Models;

namespace ThiThucHanh.Net.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class LoginController : Controller
    {
        private readonly QuanLySanPhamContext _quanLySanPhamContext;
        public LoginController()
        {
            _quanLySanPhamContext = new QuanLySanPhamContext();   
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult SignUp()
        {
            return View();
        }
        public IActionResult ConfirmLogin(string username, string password)
        {
            var user = _quanLySanPhamContext.Users.Where(p => p.Username == username && p.Password == password).FirstOrDefault();
            if(user == null)
            {
                return RedirectToAction("Index");
            }
            if (username == "admin")
            {
                return RedirectToAction("Index", "Products", new { Area = "Admin" });
            }
            return RedirectToAction("Index", "Product", new { Area = "" });
        }
    }
}
