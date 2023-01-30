// import { Button } from "bootstrap";
import Button from "react-bootstrap/Button";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import Form from "react-bootstrap/Form";
import axios from "axios";
import UserProfile from "../SessionManagment/User";
import { useNavigate } from "react-router-dom";
export default function Login() {
  // $('.message a').click(function(){
  //     $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
  //  });

  let navigate = useNavigate();
  let excption = null;
  let cred ={ uname : "",password:""};
  function loginApi() {
    console.log(cred);
    axios(
      {
        method:"POST",
        url:"http://10.208.11.208:8080/login",
        data:cred
      }
    ).then((e)=>{
      console.log(e.data);
      // UserProfile.setFullName=(e.data.fullName);
      // UserProfile.setUserName = (e.data.uname);
      // UserProfile.setDob = e.data.dob;
      // UserProfile.setEmail = e.data.email;
      // UserProfile.setMobile = e.data.mobile;

      // var name = UserProfile.getFullName;
      // console.log(name);

      UserProfile.setFullName(e.data.fullName);
      UserProfile.setUserName (e.data.uname);
      UserProfile.setDob (e.data.dob);
      UserProfile.setEmail (e.data.email);
      UserProfile.setMobile (e.data.mobile);

      
      console.log(UserProfile.getFullName());
       return navigate("/home")
    }).catch((err)=>{
      return (<div></div>)
    })
    
  }
  return (
    <Row className="col-md-5 mx-auto">
    
          <Form>
            <Form.Group className="mb-3" controlId="userName">
            <Form.Label>Enter Username</Form.Label>
            <Form.Control type="text" placeholder="Username" onChange={
              (e) => {cred.uname = e.target.value;
                console.log(cred);
              }
            }/>
            </Form.Group>

            <Form.Group>
            <Form.Label>Enter Password</Form.Label>
            <Form.Control type="password" placeholder="Password" onChange={(e) => cred.password = e.target.value}></Form.Control>
            <Form.Text>
            Never share your password with anyone else!
            </Form.Text>
            </Form.Group>

            <Button variant="primary" onClick={loginApi} >Login</Button>
          </Form>
           
          </Row>
       
  );
}
