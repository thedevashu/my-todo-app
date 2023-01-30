import axios from 'axios';
import { Link, useNavigate } from 'react-router-dom';
import Form from "react-bootstrap/Form";
import '../CSS/InsertUser.css';
export default function InsertUser() {

  let user = {uname:"",password:"",dob:"",email:"",mobile:"",fullName:""};
let navigate = useNavigate();
function insertData() {
  axios.post('http://10.208.11.208:8080/insert',user).then((res)=>{
    console.log(res);
    return navigate("/login");
  }).catch((err)=>{
    console.log(err);
  })

  // axios({
  //   method: "post",
  //   url: "http://localhost/8080/insert",
  //   data:user
  // });
  // fetch(
  //   'http://localhost/8080/insert',
  //   {
  //     method:'POST',
  //     headers: { 'Content-Type': 'application/json' },
  //     body: JSON.stringify({ title: 'React POST Request Example' })
  //   }
  // )  
}

// axios.get("http://localhost:8080/home").then((res) => res.json()).then((data) => console.log(data))
    return(
        <div>
        
            
      
        <div className="container">
          <h1>Register</h1>
          <p>Please fill in this form to create an account.</p>
          
      
          <label for="email"><b>Full Name</b></label>
          <Form.Control type="text" placeholder="Enter Full Name" name="fullname" id="fullname" onChange={(e)=>{
            user.fullName = e.target.value;
            
          }} required/>

          <label for="email"><b>Email</b></label>
          <Form.Control type="text" placeholder="Enter Email" name="email" id="email" onChange={(e)=>{
            user.email = e.target.value;
            
          }} required/>
      
          <label for="uname"><b>User Name</b></label>
          <Form.Control type="text" placeholder="Enter User Name" name="psw" id="uname" onChange={(e)=>{
            user.uname = e.target.value;
            
          }} required/>
      
          <label for="psw-repeat"><b>Password</b></label>
          <Form.Control type="password" placeholder="Password" name="psw-repeat" id="psw-repeat" onChange={(e)=>{
            user.password = e.target.value;
            
          }} required/>

          <label for="mobile"><b>Mobile</b></label>
          <Form.Control type="text" placeholder="Enter mobile" name="psw-repeat" id="psw-repeat" onChange={(e)=>{
            user.mobile = e.target.value;
            
          }}required/>
          
          <label for="dob"><b>DOB</b></label>
          <Form.Control type="date" placeholder="Enter date of birth" name="psw-repeat" id="psw-repeat" onChange={(e)=>{
            user.dob = e.target.value;
            
          }}required/>
          <hr/>
      
          <p>By creating an account you agree to our Terms & Privacy</p>
          <button type="submit" className="registerbtn" onClick={insertData} > Register </button>
       
      
        <div className="container signin">
          <p>Already have an account? <Link to="/login">Sign in</Link></p>
        </div>
     </div>
        
        </div>
    );
    
}


