
import {  FaMotorcycle, FaRoad  } from 'react-icons/fa';
import { Card, CardBody, CardContainer, CardNavigation } from './styles';


const CardComponent = () => {
    return (
        <>
            <CardContainer>
                <Card>
                    <CardBody>
                        <FaMotorcycle />
                        <CardNavigation>Rapidez na entrega</CardNavigation>
                    </CardBody>
                </Card>
                <Card>
                    <CardBody>
                        <FaRoad />
                        <CardNavigation>Frete Grátis</CardNavigation>
                    </CardBody>
                </Card>
            </CardContainer>
        </>
    );
};

export default CardComponent;
