using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WebWithEFC6.Models;

namespace WebWithEFC6.Pages
{
    public class IndexModel : PageModel
    {
        public SQLSC_EFCContext DbContext { get; }
        private readonly ILogger<IndexModel> _logger;

        public IndexModel(ILogger<IndexModel> logger, SQLSC_EFCContext dbContext)
        {
            DbContext = dbContext;
            _logger = logger;
        }

        public void OnGet()
        {

        }
    }
}