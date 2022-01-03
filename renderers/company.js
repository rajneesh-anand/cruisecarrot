const electron = require("electron");
const { remote, ipcRenderer } = electron;
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

form.addEventListener("submit", (event) => {
  event.preventDefault();

  if (isvalid()) {
    let data = new FormData(form);
    let companyData = {
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
      pan: data.get("pan").toUpperCase(),
      website: data.get("website"),
    };

    axios
      .post(
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
        $("input").val("");
      })
      .catch((error) => {
        alert(error.response.data.message);
      });
  }
});
