import styled from "styled-components";



export const FooterContainer = styled.footer`
    position: relative;
    border: 1px solid #0f163c;
    background: #0f163c;
    left: 0;
    right: 0;
    bottom: 0;
`;

export const FooterContent = styled.div`
    max-width: 1440px;
    margin: 0 auto;
    padding: 0 1rem;
    display: flex;
    justify-content: space-between;
    align-items: center;

    p {
        color: #fff;
        font-family: 'Poppins', sans-serif;
    }

    ul li {
        display: inline-block;
        margin: 0 20px;
        color: #fff;
        font-family: 'Poppins', sans-serif;
        font-weight: 300;
        font-size: 30px;

        cursor: pointer;

        text-decoration: none;
    }
     
`;