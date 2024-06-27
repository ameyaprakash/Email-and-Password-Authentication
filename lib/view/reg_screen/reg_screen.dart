import 'package:flutter/material.dart';
import 'package:valid_home/main.dart';
import 'package:valid_home/view/login_screen/login_screen.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
     TextEditingController passController = TextEditingController();
      TextEditingController confirmController = TextEditingController();
    return Scaffold(

      body:SafeArea(
        child: Center(
          child:Form(
            key:formkey ,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign Up for Free",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30,),),
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
                        Icons.visibility_off_outlined),
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
        
                       TextFormField(
                        controller: confirmController,
                         obscureText: true,
                        obscuringCharacter: "*",
                       decoration: InputDecoration(
                        hintText: "Your Confirm Password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(),
                        ),
                        errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50) ,
                           borderSide: BorderSide(width: 1.5, color: Colors.red),
                          ),
                          
                        suffixIcon: Icon(
                        Icons.visibility_off_outlined),
                       ),
                       validator: (value) {
                        if(passController.text== confirmController.text)
                        {
                          return null;
        
                        }
                        else{
                          return "password doesnot match";
                        }
                       },
                       
                      ),
        
                    SizedBox(
                      height: 20,),
                    
                    InkWell(
                      onTap: (){
                        if(formkey.currentState!.validate()){
                        userEmail=emailController.text;
                        userPass=passController.text;
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                        }
                      },
                    
                    child: Container(
                      width: 500,
                        height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                         
                        ),
                      ),
                    ),
                    ),
                    
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
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                         child:Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                
                              ),
                            ),
                             ),
                      ],
                   ),
        
                  //     SizedBox(height: 20,),
                  //    SizedBox(width: double.infinity, height: 60,
                  //    child: ElevatedButton(onPressed: (){}, child: 
                  // Text("Sign Up",
                  // style: TextStyle(color: Colors.white,
                  // fontSize: 20),),
                  
                  // style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  // ),
                  //    ),
                  //   ),
                ],
              ),
            ),
          ) ,
        ),
      ), );
  }
}