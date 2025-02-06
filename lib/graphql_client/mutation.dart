String getSignupinput = r"""
mutation Signup ($input:SignUpInput!){
  signUp(input:$input){
    token
    user{
      name
      email
      id
      password
      role
      
    }
  }
}
""";
