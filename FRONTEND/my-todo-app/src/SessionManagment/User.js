var UserProfile =(function() {
    var fullname = "";
    var userName = "";
    var dob ="";
    var email="";
    var mobile="";

    var setFullName = function (fName) {
        fullname = fName;
    }
    var getFullName = function () {
        return fullname;
    }
    var setUserName = function (uName) {
        userName = uName;
    }
    var getUserName = function () {
        return userName;
    }

    var setDob = function (udob) {
        dob = udob;
    }
    var getDob = function () {
        return dob;
    }
    var setEmail = function (uEmail) {
        email = uEmail;
    }
    var getEmail = function () {
        return email;
    }
    var setMobile= function (uMobile) {
        mobile = uMobile;
    }
    var getMobile = function () {
        return mobile;
    };



    return{
        getFullName : getFullName,
        setFullName : setFullName,

        getUserName : getUserName,
        setUserName : setUserName,

        getDob : getDob,
        setDob : setDob,

        getEmail :getEmail,
        setEmail : setEmail,

        setMobile : setMobile,
        getMobile : getMobile
    }
})();
export default UserProfile;

// var UserProfile = (function() {
//     var full_name = "";
  
//     var getName = function() {
//       return full_name;    // Or pull this from cookie/localStorage
//     };
  
//     var setName = function(name) {
//       full_name = name;     
//       // Also set this in cookie/localStorage
//     };
  
//     return {
//       getName: getName,
//       setName: setName
//     }
  
//   })();
  
//   export default UserProfile;