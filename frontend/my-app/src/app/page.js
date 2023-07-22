import React from "react";
import axios from "axios";

// Define the data for the repeated cards
const cardData = [
  {
    id: 1,
    imgSrc:
      "https://images.unsplash.com/photo-1645696301019-35adcc18fc21?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNhdGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    name: "Sate Ayam",
  },
  // Add more card data if needed
];

// Define the data for the price list
const priceListData = [
  {
    id: 1,
    name: "Cah Kangkung",
    amount: "2x",
    price: "Rp 10.000",
  },
  // Add more price list data if needed
];

var kamu;

const fetchData = async () => {
  let data = []
  try {
    // Replace the URL with the API endpoint you want to fetch data from
    const response = await axios.get("http://localhost:4000/");
    // console.log(response.data);
    kamu= response.data
    
  } catch (error) {
    console.error("Error fetching data:", error);
  }
  console.log(data);
  return data.json()
};


// React component for the card
const Card = ({ imgSrc, name }) => (
  <div className="card">
    <img src={imgSrc} alt="" />
    <div className="name">{name}</div>
  </div>
);

// React component for the price list
const PriceListItem = ({ name, amount, price }) => (
  <div className="value">
    <div className="name">{name}</div>
    <div className="tag">
      <div className="amount">{amount}</div>
      <div className="price">{price}</div>
    </div>
  </div>
);

const App = async () => {
  // const data = fetchData()
  let data = []
  try {
    // Replace the URL with the API endpoint you want to fetch data from
    const response = await axios.get("http://localhost:4000/");
    // console.log(response.data);
    data= response.data
    
  } catch (error) {
    console.error("Error fetching data:", error);
  }
  console.log(data);
  const add = (id)=>{
    console.log(id);

  }
  return (
    <div className="main">
      {/* {JSON.stringify(data)} */}
      <div className="left">
        {data.map((card) => (
          <div className="child" key={card.id} onClick={add(card.id)}>
            <div className="card" >
              <img src={card.img} alt="" />
              <button className="name" >{card.name}</button>
            </div>
          </div>
        ))}
      </div>
      <div className="right">
        {/* Your existing code for the right side goes here */}
        <div class="head">
                <div>
                    <div class="head-left">kiri</div>
                </div>
                <div>
                    <div class="head-mid">tengah</div>
                </div>
                <div>
                    <div class="head-right">kanan</div>
                </div>
            </div>
            <div class="dinein">dinein</div>
        <div className="pricelist">
          <div className="table">
            <div className="number">1</div>
            <div className="view">view table</div>
          </div>
          {priceListData.map((item) => (
            <PriceListItem
              key={item.id}
              name={item.name}
              amount={item.amount}
              price={item.price}
            />
          ))}
        </div>
        {/* Continue with the rest of the right side content */}
        <div class="clear">Clear Sale</div>
            <div class="gap"></div>
            <div class="btn">
                <div class="savebill">Save Bill</div>
                <div class="printbill">Print Bill</div>
            </div>
            <div class="bottom">
                <div class="splitbill">split</div>
                <div class="charge">Charge Rp 100.000</div>
            </div>
      </div>
    </div>
  );
};

export default App;
