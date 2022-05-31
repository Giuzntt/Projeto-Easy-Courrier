import styled from "styled-components";


export const Container = styled.div`
    margin-top: 4rem;

    table {
        width: 100%;
        border-spacing: 0 0.5rem;

        th {
            font-weight: bold;
            font-family: 'Poppins', sans-serif;
            padding: 1rem 2rem;
            text-align: left;
            line-height: 1.5rem;
        }

        td {
            padding: 1rem 2rem;
            border: 0;
            background: #f4f4f4;
            color: black;
            font-family: 'Poppins', sans-serif;
            border-radius: 0.25rem;
            font-size: 1.2rem;

        
            button.delete {
                padding: 10px;
                background: #ea4335;
                border: none;
                border-radius: 5px;
                font-size: 15px;
                margin: 0px 5px;
                color: white;
                cursor: pointer;
                transition: filter 0.2s;
                &:hover {
                    filter: brightness(0.8);
                }
            }
        }
    }
`;