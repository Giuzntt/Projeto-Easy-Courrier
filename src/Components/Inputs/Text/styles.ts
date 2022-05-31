import styled from "styled-components";

export const ContainerInput = styled.form`
    display: flex;
    gap: 20px;
    justify-content: center;
    align-items: center;
    width: 100%;

    input[type='text'] {
        margin: 10px 0;
        height: 3rem;
        padding: 1.5rem;
        border-radius: 0.25rem;
        border: 1px solid #d7d7d7;
        background: #e7e9ee;
        font-weight: 400px;
        font-size: 1.125rem;
        font-family: 'Poppins', sans-serif;
    }
    button {
        border-radius: 5px;
        padding: 10px 40px;
        outline: none;
        border: 0;
        font-family: 'Poppins', sans-serif;
        font-size: 18px;
        text-transform: uppercase;
        background: #0f163c;
        color: #fff;
        cursor: pointer;
        transition: filter 0.2s;

        &:hover {
            filter: brightness(0.8);
        }
    }
`;


   
        
