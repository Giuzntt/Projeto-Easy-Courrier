import axios from "axios";



export const api = axios.create({
    baseURL: 'https://6295270563b5d108c19a8ed1.mockapi.io',
    headers: {
        'Content-Type': 'application/json',
    }
});