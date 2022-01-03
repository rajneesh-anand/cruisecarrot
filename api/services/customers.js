const pool = require("../config/database");

module.exports = {
  create: (data, callBack) => {
    // console.log(data);
    pool.query(
      `insert into customers(first_name, last_name,address_line_one, address_line_two,city,state,pincode,mobile,phone,gstin,email,pan) 
                values(?,?,?,?,?,?,?,?,?,?,?,?)`,
      [
        data.first_name,
        data.last_name,
        data.address_line_one,
        data.address_line_two,
        data.city,
        data.state,
        data.pincode,
        data.mobile,
        data.phone,
        data.gstin,
        data.email,
        data.pan,
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  getUserByUserEmail: (email, callBack) => {
    pool.query(
      `select * from registration where email = ?`,
      [email],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },
  fetchCustomerById: (id, callBack) => {
    pool.query(
      `select * from customers where id = ?`,
      [id],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },
  fetchCustomers: (callBack) => {
    pool.query(
      `SELECT id,c.first_name,c.last_name,c.address_line_one,c.address_line_two,c.city,c.pincode,c.mobile,c.email,c.phone,c.gstin,s.State_Name FROM customers c, states s where c.state =s.id`,
      [],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  setCustomer: (data, callBack) => {
    pool.query(
      `update customers set first_name=?, last_name=?, address_line_one=?, email=?, address_line_two=?, mobile=?, phone=?, state=?, gstin=?, city=? where id = ?`,
      [
        data.first_name,
        data.last_name,
        data.address_line_one,
        data.email,
        data.address_line_two,
        data.mobile,
        data.phone,
        data.state,
        data.gstin,
        data.city,
        data.id,
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },
  deleteUser: (data, callBack) => {
    pool.query(
      `delete from registration where id = ?`,
      [data.id],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },
  createComapanyRecord: (data, callBack) => {
    pool.query(
      `insert into company_details(name,address_one, address_two,city,state,pin,mobile,phone,gst,email,pan, website) 
                values(?,?,?,?,?,?,?,?,?,?,?,?)`,
      [
        data.name,
        data.address_one,
        data.address_two,
        data.city,
        data.state,
        data.pin,
        data.mobile,
        data.phone,
        data.gst,
        data.email,
        data.pan,
        data.website,
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  setCompany: (data, callBack) => {
    pool.query(
      `update company_details set name=?, address_one=?, address_two=?, city=?, pin=?, state=?, mobile=?, phone=?, gst=?, pan=?, email=?, website=? where id = ?`,
      [
        data.name,
        data.address_one,
        data.address_two,
        data.city,
        data.pin,
        data.state,
        data.mobile,
        data.phone,
        data.gst,
        data.pan,
        data.email,
        data.website,
        data.id,
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },
};
