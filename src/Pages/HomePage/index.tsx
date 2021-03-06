
import imagehome from '../../Assets/images/img-home.jpg'
import CardComponent from '../../Components/Card';
import {TextInput} from '../../Components/Inputs/Text';
import { ContainerHome, ContainerHomeTitle } from './styles';

export default function  HomePage () {
    return (
        <ContainerHome>
            <ContainerHomeTitle>
                <img src={imagehome} alt="" />

                <div>
                    <p>Somos uma empresa de transportes disrruptiva, entregamos o seu produto com qualidade, eficiência...</p>
                    <TextInput />
                </div>
            </ContainerHomeTitle>
            <div className="cards">
                <CardComponent />
            </div>
        </ContainerHome>
    );
}



