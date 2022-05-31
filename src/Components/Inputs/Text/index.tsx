import { FormEvent, useState } from "react";
import { useNavigate } from "react-router-dom";
import { useLocation } from "../../../Hooks/useLocation";
import { ContainerInput } from "./styles";

export function TextInput(){
    const [value, setValue] = useState("");
    const { findById } = useLocation()

    let navigate = useNavigate();
     async function searchProduct( event: FormEvent) {
         event.preventDefault();
         navigate("/search", {state: {id:value}});
         await  findById(value)
    }

    
    return (
        <ContainerInput onSubmit={searchProduct}>
            <input
                type="text"
                placeholder="Código de rastreio"
                onChange={(event) => {
                    setValue(event.target.value);
                }}
                value={value}
                required
            />
            <button>Buscar</button>
        </ContainerInput>
    );
}