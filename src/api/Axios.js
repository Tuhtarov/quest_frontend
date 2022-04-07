import axios from "axios"

const host = process.env.VUE_APP_BACKEND_HOST ?? "whatthefuck"
const port = process.env.VUE_APP_BACKEND_PORT ?? "8001"

export let axiosInstance = axios.create({
    baseURL: `http://${host}:${port}`,
});
