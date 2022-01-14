import logo from "./logo.svg";
import "./App.css";
import { useEffect, useState } from "react";
const axios = require("axios");

const App = () => {
  const [user, setUser] = useState();
  useEffect(() => {
    axios.get("/a").then(({ data }) => {
      setUser(JSON.stringify(data));
    });
  }, []);
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>{user}</p>
      </header>
    </div>
  );
};

export default App;
