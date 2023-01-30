import UserProfile from "../SessionManagment/User"
import { useState } from "react";
import Row from "react-bootstrap/esm/Row";
import Form from "react-bootstrap/Form";
import Button from "react-bootstrap/esm/Button";
import { useNavigate } from "react-router-dom";
import "react-datetime/css/react-datetime.css";
import DateTimePicker, { ReactDatePicker } from 'react-datepicker';
import { setHours, setMinutes } from "date-fns";
export default function UserDashboard() {

    let navigate = useNavigate();
    const [startdate, setstartdate] = useState(setHours(setMinutes(new Date(), 30), 16));
    if(localStorage.length === 0){
        localStorage.setItem("userSession",UserProfile)
        let name = UserProfile.getFullName();
        localStorage.setItem("name",name);
    }
    function addTask(params) {
        
    }
    // console.log(localStorage);
    return(
        <div>
        <Button variant="secondary" size="sm" onClick={(e)=>{
            localStorage.clear();
            return navigate("/login")
        }}>
          Logout
        </Button>
        
        <Row className="col-md-5 mx-auto">
        <h1>Welcome {localStorage.getItem("name")}</h1>
        <Form>
        <Form.Group className="mb-3" controlId="userName">
            <Form.Label>
            Enter task name
            </Form.Label>
            <Form.Control type="text" placeholder="Task name....."></Form.Control>


            <Form.Label>
            Enter your task
            </Form.Label>
            <Form.Control as="textarea" row={5} placeholder="Write here....."></Form.Control>

        
         <DateTimePicker
          dateFormat="yyyy-mm-dd, yyyy h:mm aa"
           selected={startdate} 
           onChange={(date) =>  setstartdate(date) } 
           showTimeSelect
      excludeTimes={[
        setHours(setMinutes(new Date(), 0), 17),
        setHours(setMinutes(new Date(), 30), 18),
        setHours(setMinutes(new Date(), 30), 19),
        setHours(setMinutes(new Date(), 30), 17),
      ]}
           
           />
                
              
           
        </Form.Group>
        </Form>
        </Row>
        </div>
        
    )
    
} 