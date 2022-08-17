import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/utils/routes.dart';

class studentReg extends StatefulWidget {
  @override
  State<studentReg> createState() => _studentRegState();
}

class _studentRegState extends State<studentReg> {
    final _formKey = GlobalKey<FormState>();
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text("Student Sign Up",style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
               child: Form(
                 key: _formKey,
                 child: Column(
                   children: [
                     TextFormField(
                                decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent)
                                  ),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                  fillColor: Colors.white,
                                hintText: "Firstname"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Required";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) {
                          
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent)
                                    ),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                    fillColor: Colors.white,
                                  hintText: "Lastname"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Required";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (value) {
                          
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent)
                                    ),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                    fillColor: Colors.white,
                                  hintText: "Email"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Required";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (value) {
                          
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                 
                                  decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent)
                                    ),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                    fillColor: Colors.white,
                                  hintText: "Contact no."),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Required";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (value) {
                          
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent)
                                    ),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                    fillColor: Colors.white,
                                  hintText: "State"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Required";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (value) {
                          
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent)
                                    ),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                    fillColor: Colors.white,
                                  hintText: "City"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Required";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (value) {
                          
                                  },
                                ),
                              ),
                              Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent)
                                  ),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                  fillColor: Colors.white,
                                hintText: "Address"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Required";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) {
                        
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent)
                                  ),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                  fillColor: Colors.white,
                                hintText: "School Name"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Required";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) {
                        
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent)
                                  ),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                  fillColor: Colors.white,
                                hintText: "PinCode"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Required";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) {
                        
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent)
                                  ),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                  fillColor: Colors.white,
                                hintText: "Password"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Required";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) {
                        
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent)
                                  ),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.white)),
                                  fillColor: Colors.white,
                                hintText: "Confirm Password"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Required";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) {
                        
                                },
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              padding: EdgeInsets.all(20)
                             ),
                         onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                await Navigator.pushNamed(context,Myroutes.studentHome);
                                }
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          )
                   ],
                 ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}
