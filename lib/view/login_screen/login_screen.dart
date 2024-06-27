

import 'package:flutter/material.dart';
import 'package:valid_home/main.dart';

import 'package:valid_home/view/home_screen/home_screen.dart';
import 'package:valid_home/view/reg_screen/reg_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
     TextEditingController passController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          
            child: Form(
              key: formkey,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign in to Your Account",
                  style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
                  
                  
                  ),
                  
                  SizedBox(height: 20,),
                  
                  TextFormField(
                   controller: emailController,
                   
                    decoration: InputDecoration(
                      hintText: "Your Email Address",
                     
                      border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                      
                    ),
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return " enter a email address";
                      }
                      else if(value.contains("@")){
                        return null;
                      }else{
                        return "enter a valid email address";
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  
                  
                  TextFormField(
                    controller: passController,
                     obscureText: true,
                    obscuringCharacter: "*",
                   decoration: InputDecoration(
                    hintText: "Your Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(),
                    ),
                    errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50) ,
                       borderSide: BorderSide(width: 1.5, color: Colors.red),
                      ),
                    suffixIcon: Icon(
                    Icons.visibility_off_rounded),
                   ),
                   validator: (value) {
                     if(value!=null && value.length>=6){
                      return null;
                     }else{
                      return " enter password with min 6 characters";
                     }
                   },
                   
                  ),
                  
                  
                  SizedBox(height: 20,),
                  Row(
                  children: [
                    Icon(Icons.check_box_outlined),
                    Text("Remember Me"),
      
                    Spacer(),
                    Text("Forgot  Password",
                    style: TextStyle(color:   Color.fromARGB(255, 78, 157, 223)),),
      
                  ],
                  ),
                  
      
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                   if(formkey.currentState!.validate()){
                    if(emailController.text==userEmail  && passController.text==userPass)
                    {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen(),),
                    (route) => false, );
                    }
                    else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text("Invalid Credential, try again")));
                   }
                   }
                    },
      
                    child: Container(
                      width: 500,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white,
                        fontSize: 18,),
                      ),
                    ),
                      
                      
                    
                    ),
                    
                  
                  
                  // SizedBox(height: 20,),
                  //   SizedBox(
                  //     width: double.infinity, height: 60,
      
                  //   child: 
      
                  // ElevatedButton(onPressed: (){
                   
                  // if(formkey.currentState!.validate()){
                  //   Navigator.pushAndRemoveUntil(context,
                  //          MaterialPageRoute(builder: (context) => HomeScreen(),),
                  //          (route) => false);
                  // }else{
                  //   print("invalid");
                  // }
                  //  }, child: 
                  // Text("Sign in",
                  // style: TextStyle(color: Colors.white,
                  // fontSize: 20),),
                  // style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  // ),
                  // ),
                  //   ),
      
                 Spacer(),
      
                 Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          
                        ),
                      ),
                       TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegScreen(),));
                          
                        },
                       child:Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              
                            ),
                          ),
                           ),
                    ],
                 ),
             
      
                ],
              
              ),
            ),
          ),
        
      ),
    );
  }
}

