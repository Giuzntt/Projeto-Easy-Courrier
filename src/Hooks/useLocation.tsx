import React, { useEffect, useState } from "react";
import { api } from "../services/api";


export interface ITableProps {
    id: string;
    nameProduct: string;
    address: string;
    avatar: string;
    data: string;
    status: string;
}

interface LocationProviderProps {
    children: React.ReactNode;

}
interface LocationContextData {
    searchProduct: ITableProps[];
    deleteProduct(id: ITableProps): Promise<void>;
    findById(id: string): Promise<void>;
}

const LocationContext = React.createContext<LocationContextData>({} as LocationContextData);



export function LocationProvider({ children }: LocationProviderProps) {
    const [searchProduct, setSearchProduct] = useState<ITableProps[]>([]);

    useEffect(() => {
        async function loadProducts() {
            // const response = await axios.get('https://6295270563b5d108c19a8ed1.mockapi.io/produtcs');
            const response = await api.get('/produtcs');

            console.log(response.data);
            setSearchProduct(response.data);
            
        }

        loadProducts();
    }, []);

    
    async function findById(id: string) {
        const response = await api.get(`/produtcs/${id}`);
        
        let array: ITableProps[] = [];
        array.push(response.data)
        
        setSearchProduct(array);
    }

    async function deleteProduct(product: ITableProps) {
        const response = await api.delete(`/produtcs/${product.id}`);

        if (response.status === 200) {
            setSearchProduct(searchProduct.filter((p) => p.nameProduct !== product.nameProduct));
        }
    }
      return <LocationContext.Provider value={{ searchProduct, deleteProduct, findById }}>{children}</LocationContext.Provider>;

    
}


export function useLocation(){
    const context = React.useContext(LocationContext);

    if(!context){
        throw new Error('useLocation must be used within a LocationProvider');
    }

    return context;
}