const axios = require("axios");
const CryptoJS = require("crypto-js");

const http = axios.create({
  baseURL: process.env.PAYOS_ORDER_BASE_URL,
  headers: {
    "Content-type": "application/json",
    "x-client-id": process.env.PAYOS_CLIENT_ID,
    "x-api-key": process.env.PAYOS_API_KEY,
  },
});

const createOrder = async (data) => {
  var dataPayOS = createOrderData(data);

  var res = await http
    .post("/", JSON.stringify(dataPayOS))
    .then((response) => {
      return response.data;
    })
    .catch((e) => {
      return null;
    });

  return res;
};

const createSignature = (orderCode) => {
  const data = {
    orderCode: parseInt(orderCode),
    amount: parseInt(process.env.PAYOS_FUND_PRICE),
    description: "BOB" + orderCode,
    cancelUrl: process.env.PAYOS_CANCEL_URL,
    returnUrl: process.env.PAYOS_RETURN_URL,
  };

  const sortData = sortObjDataByAlphabet(data);
  const stringifyData = Object.keys(sortData)
    .map((key) => `${key}=${data[key]}`)
    .join("&");

  return CryptoJS.HmacSHA256(
    stringifyData,
    process.env.PAYOS_CHECKSUM_KEY
  ).toString(CryptoJS.enc.Hex);
};

const sortObjDataByAlphabet = (obj) => {
  const sortedKeys = Object.keys(obj).sort();
  const sortedObject = {};

  sortedKeys.forEach((key) => {
    sortedObject[key] = obj[key];
  });
  return sortedObject;
};

const createOrderData = (data) => {
  const res = {
    orderCode: parseInt(data.orderCode),
    amount: parseInt(process.env.PAYOS_FUND_PRICE),
    description: "BOB" + data.orderCode,
    items: [
      {
        name: "B.O.B Tennis Club: Tiền Quỹ",
        quantity: 1,
        price: parseInt(process.env.PAYOS_FUND_PRICE),
      },
    ],
    cancelUrl: process.env.PAYOS_CANCEL_URL,
    returnUrl: process.env.PAYOS_RETURN_URL,
    signature: createSignature(data.orderCode),
  };

  return res;
};

module.exports = {
  createOrder,
};
