import { BrowserRouter } from "react-router-dom";
import Footer from "./Components/Footer";
import NavBar from "./Components/Navbar";
import { LocationProvider } from "./Hooks/useLocation";
import Routes from "./routes";
import GlobalStyles from "./Styles/globalStyles";



const  App=(): JSX.Element => {
  return (
          <LocationProvider>
      <BrowserRouter>
          <NavBar />
          <Routes />
          <GlobalStyles />
          <Footer />
      </BrowserRouter>
          </LocationProvider>
  );
}

export default App;
