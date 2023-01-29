import { createSlice } from '@reduxjs/toolkit';

const initialState = {
    user: null,
    token: null,
    appointment: {},
    appointments: [],
};

export const authSlice = createSlice({
    name: 'auth',
    initialState,
    reducers: {
        setLogin: (state, action) => {
            state.user = action.payload.user;
            state.token = action.payload.token;
        },
        setLogout: (state) => {
            state.user = null;
            state.token = null;
        },
        setAppoint: (state, action) => {
            state.appointment = action.payload;
        },
        setAppointments: (state, action) => {
            state.appointments.push(action.payload);
        }
    }
});

export const { setLogin, setLogout, setAppoint, setAppointments } = authSlice.actions;
export default authSlice.reducer;