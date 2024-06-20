using BackEndPruebaTecnicsLaureate.Business;
using BackEndPruebaTecnicsLaureate.Models.Request;
using BackEndPruebaTecnicsLaureate.Models.ViewModel;
using Microsoft.AspNetCore.Mvc;

namespace BackEndPruebaTecnicsLaureate.Controllers
{
    [ApiController]
    [Route("api/[Controller]")]
    public class BeneficiariesController : Controller
    {
        [HttpGet("GetBeneficiariesById")]
        public async ValueTask<ActionResult<VMBeneficiaries>> GetBeneficiaries(string id)
        {
            BBeneficiaries response = new();
            var listBeneficiaries = await response.GetBeneficiaries(id);
            if (!listBeneficiaries.code)
            {
                return BadRequest(listBeneficiaries);
            }
            return Ok(listBeneficiaries);
        }

        [HttpPost("PostBeneficiary")]
        public async ValueTask<ActionResult<VMGeneric>> PostBeneficiary([FromBody] RQBeneficiary beneficiary)
        {
            BBeneficiaries response = new();
            var addBeneficiary = await response.PostBeneficiary(beneficiary);
            if (!addBeneficiary.code)
            {
                return BadRequest(addBeneficiary);
            }
            return Ok(addBeneficiary);
        }

        [HttpPut("PutBeneficiary")]
        public async ValueTask<ActionResult<VMGeneric>> PutBeneficiary(string id, [FromBody] UPBeneficiary beneficiary)
        {
            BBeneficiaries response = new();
            var addBeneficiary = await response.PutBeneficiary(id, beneficiary);
            if (!addBeneficiary.code)
            {
                return BadRequest(addBeneficiary);
            }
            return Ok(addBeneficiary);
        }

    }
}
