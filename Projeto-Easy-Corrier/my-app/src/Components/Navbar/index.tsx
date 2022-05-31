import { ContainerNavBar } from "./styles";

import Logo from '../../Assets/images/logo.png';
import { Link } from "react-router-dom";


export  default function NavBar(){
    return (
      <ContainerNavBar>
      <div>


          <Link to={"/"}>
            <img src={Logo} alt="Imagem Logo" />
          </Link>
        <ul>
            <Link to={"/"}>
            <li> Quem somos nos</li>
            </Link>
            <Link to={"/search"}>
            <li> Rastrear pedido</li>
            </Link>
        </ul>
        
      </div>
      </ContainerNavBar>
    );
}