import logo from "./logo.svg";
import "./App.css";
import { useEffect, useState } from "react";
import { Button } from "react-bootstrap";
const axios = require("axios");

const App = () => {
  console.log(process.env.REACT_APP_NAME, "Bobbybbbbbbbbbbbbbbbb");

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
        <h2>Welcome to JustWish Scarlette !!!!!</h2>
        <p>{user}</p>
        <Button variant="primary">Primary</Button>
      </header>
    </div>
  );
};

export default App;
