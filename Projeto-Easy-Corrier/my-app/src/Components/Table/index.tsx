import { FaPencilAlt, FaTrash } from "react-icons/fa";
import {  useLocation } from "../../Hooks/useLocation";
import { Container } from "./styles";




export function Table() {

    const  {searchProduct, deleteProduct} = useLocation();

    async function deleteProductFromTable(product: any) {
        await deleteProduct(product);
        console.log(product);
    }

    return (
        <Container>
            <table>
                <thead>
                    <tr>
                        <th>Código de Rastreio</th>
                        <th>Nome do Produto</th>
                        <th>Data</th>
                        <th>Status</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                  {searchProduct.map((product)=>{
                            return (
                                <tr key={product.id}>
                                    <td>{product.id}</td>
                                    <td>{product.nameProduct}</td>
                                    <td>{new Intl.DateTimeFormat('pt-BR').format(new Date(product.data))}</td>
                                    <td>{product.status}</td>
                                    <td>
                                        <button className="edit">
                                            <FaPencilAlt />
                                        </button>
                                        <button className="delete" 
                                            onClick={() => deleteProductFromTable(product)}>
                                            <FaTrash />
                                        </button>
                                    </td>
                                </tr>
                            );
                        })

                        }
                        
                  
                </tbody>
            </table>
        </Container>
    );
}