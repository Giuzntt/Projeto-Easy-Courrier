import styled from "styled-components";


export const ContainerHome = styled.div`
    max-width: 1440px;
    margin: 0 auto;
    min-height: calc(100vh - 80px);
    padding: 20px 50px;
    
    .cards{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    `

    export const ContainerHomeTitle = styled.div`
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 48px;
        div {
            
            p {
                font-family: 'Poppins', sans-serif;
                text-align: center;
                font-size: 20px;
                font-weight: 500;
                margin: 10px 0;
            }
        }
    `;

