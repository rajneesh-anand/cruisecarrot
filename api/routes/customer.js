const router = require("express").Router();
const { checkToken } = require("../auth/jwt_validation");
const {
  createCustomer,
  login,
  getCustomerById,
  getCustomers,
  updateCustomer,
  deleteUser,
  getStates,
  getCustomerBalanceById,
  getCustomerslist,
  getCompanyList,
  getCompanyById,
  createCompany,
  updateCompany,
} = require("../controllers/customers");
router.get("/customers", getCustomers);
router.post("/customer", createCustomer);
router.get("/customer/:id", getCustomerById);
router.get("/customerbalance/:id", getCustomerBalanceById);
router.post("/login", login);
router.put("/customer", updateCustomer);
router.delete("/", checkToken, deleteUser);
router.get("/states", getStates);
router.get("/fetchcustomeraccount", getCustomerslist);

router.get("/companylist", getCompanyList);
router.get("/company/:id", getCompanyById);
router.post("/company", createCompany);
router.put("/company", updateCompany);
module.exports = router;
