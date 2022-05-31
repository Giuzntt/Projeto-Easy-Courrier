import styled from 'styled-components';


export const CardContainer = styled.div`
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: 100%;
    background-color: #fff;
`;

export const Card = styled.div`
    margin: 60px 120px;
    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
    border-radius: 10px;
    border: 1.2px solid white;
    width: 321px;
    height: 227px;
    background-color: #fff;
`;
export const CardBody = styled.div`
    font-family: 'Poppins', sans-serif;
    background-color: #f4f4f4;
    display: flex;
    font-weight: 500;
    color: #0f163c;
    border-radius: 10px;
    font-size: 30px;
    background-size: cover;
    background-repeat: no-repeat;
    font-size: 30px;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: 100%;
`;
export const CardNavigation = styled.div`
    margin-top: 15px;
    color: #0f163c;
`;
