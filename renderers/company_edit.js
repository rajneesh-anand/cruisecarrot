const electron = require("electron");
const { ipcRenderer, remote } = electron;
const axios = require("axios");

function ValidateNumbers(e) {
  document.oncontextmenu = function () {
    return false;
  };
  var key = document.all ? e.keyCode : e.which;
  if (key == 8) return true;
  patron = /\d/;
  te = String.fromCharCode(key);
  return patron.test(te);
}

function isNumberKey(evt, obj) {
  var charCode = evt.which ? evt.which : evt.keyCode;
  var value = obj.value;
  var dotcontains = value.indexOf(".") != -1;
  if (dotcontains) if (charCode == 46) return false;
  if (charCode == 46) return true;
  if (charCode > 31 && (charCode < 48 || charCode > 57)) return false;
  return true;
}
$(function () {
  const btnClose = document.getElementById("btnClose");
  btnClose.addEventListener("click", (event) => {
    const window = remote.getCurrentWindow();
    window.close();
  });

  $(".datepicker").datepicker({
    defaultDate: new Date(),
    autoClose: true,
    format: "dd mmm yyyy",
    setDefaultDate: true,
  });
});

document.addEventListener("keydown", (event) => {
  switch (event.key) {
    case "Escape":
      const window = remote.getCurrentWindow();
      window.close();
      break;
  }
});

const isvalid = () => {
  let name = document.getElementById("name").value;
  let address = document.getElementById("address_one").value;
  let gst = document.getElementById("gst").value;
  let city = document.getElementById("city").value;

  if (name === "" || address === "" || gst === "" || city === "") {
    return false;
  } else {
    return true;
  }
};

let form = document.querySelector("form");

form.addEventListener("submit", function (event) {
  event.preventDefault();
  if (isvalid()) {
    var data = new FormData(form);
    let companyData = {
      id: data.get("id"),
      name: data.get("name").toUpperCase(),
      address_one: data.get("address_one"),
      address_two: data.get("address_two"),
      city: data.get("city").toUpperCase(),
      pin: data.get("pincode"),
      state: data.get("state"),
      phone: data.get("phone"),
      mobile: data.get("mobile"),
      gst: data.get("gst").toUpperCase(),
      email: data.get("email"),
      pan: data.get("pan"),
      website: data.get("website"),
    };
    // console.log(companyData);
    axios
      .put(
        `http://localhost:3000/api/company`,
        companyData,

        {
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
          },
        }
      )
      .then((response) => {
        alert(response.data.message);
        $(":input").prop("disabled", true);
      })
      .catch((error) => {
        alert(error.response.data.message);
      });
  }
});

ipcRenderer.on("fetchStates", (event, data) => {
  var Options = "";
  data.map(function (element, i) {
    Options =
      Options +
      `<option value='${element.State_Name}'>${element.State_Name}</option>`;
  });

  $(".stateName").append(Options);
  $(".stateName").formSelect();
});

ipcRenderer.on("sendCompanyDataForEdit", (event, data) => {
  document.getElementById("id").value = data.id;
  document.getElementById("name").value = data.name;
  document.getElementById("address_one").value = data.address_one;
  document.getElementById("address_two").value = data.address_two;
  document.getElementById("city").value = data.city;
  document.getElementById("pincode").value = data.pin;
  document.getElementById("mobile").value = data.mobile;
  document.getElementById("phone").value = data.phone;
  document.getElementById("email").value = data.email;
  document.getElementById("gst").value = data.gst;
  document.getElementById("state").value = data.state;
  document.getElementById("pan").value = data.pan;
  document.getElementById("website").value = data.website;
});
