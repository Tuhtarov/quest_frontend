import axios from "axios"

const host = process.env.VUE_APP_BACKEND_HOST
const port = process.env.VUE_APP_BACKEND_PORT

export let axiosInstance = axios.create({
    baseURL: `http://${host}:${port}`,
});
