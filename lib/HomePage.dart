import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
    @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double history=0.0;
  var value="";
  var oper='+';
  var prevhistory=0.0;
  double totalhistory=0.0;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("CALCULATOR"),backgroundColor: Colors.orange,leading: Icon(Icons.calculate),),
      body:Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                width: 300,
                alignment: Alignment.centerRight,
                child:IconButton(onPressed: (){
                  setState(() {
                  value=prevhistory.toString(); 
                                    });
                  
                }, icon: Icon(Icons.history),)
              ),
              Container(
                height: 40,
                width: 300,
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(77, 218, 205, 205)),
                child: Text("$value",style: TextStyle(fontSize:25),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("0",style: TextStyle(fontSize:40,color: Colors.blue),),onPressed: () {
                          setState(() {
                          history=history*10+0;
                          value+="0";
                                                    });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("AC",style:TextStyle(fontSize:25,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                            prevhistory=totalhistory;
                          totalhistory=0.0;
                          history=0;
                          value="";
                          oper='+';
                                                    });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("-",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                            totalhistory=calculate(oper,history,totalhistory);
                          oper='-';
                          value+="-";
                          history=0.0;
                                                    });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("+",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                           totalhistory= calculate(oper,history,totalhistory);
                          oper='+';
                          value+="+";
                          history=0.0;
                                                    });
                        },)
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("1",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() { 
                         history=history*10+1;
                        
                        value+="1";
                        });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("2",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                        history=history*10+2;
                        
                        value+="2";
                        });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("3",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                        history=history*10+3;
                        
                        value+="3";
                                                    });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("/",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                           totalhistory= calculate(oper,history,totalhistory);
                          oper='/';
                          value+="/";
                                                    });
                        },)
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("4",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                        history=history*10+4;
                        
                        value+="4";
                        });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("5",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                              history=history*10+5;
                        
                        value+="5";
                                                    });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("6",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                        history=history*10+6;
                        
                        value+="6";
                                                    });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("*",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                        totalhistory=calculate(oper,history,totalhistory);
                          oper='*';
                          value+="*";    
                          history=0;   });
                        },)
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("7",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                              history=history*10+7;
                        
                        value+="7";
                                                    });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("8",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                         history=history*10+8;
                        
                        value+="8";
                                                    });
                        },)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("9",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                        history=history*10+9;
                        value+="9";
                      
                        });
                        },)
                        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black12),
                        height: 65,
                        width: 65,
                        child: TextButton(child: Text("=",style:TextStyle(fontSize:40,backgroundColor: Colors.transparent) ),onPressed: () {
                          setState(() {
                            totalhistory=calculate(oper,history,totalhistory);
                          value=totalhistory.toString();
                          });
                        },)
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
double calculate(var sym,double amt,double total)
{
  var answer=0.0;
   if(sym=='-')
  {
    answer=total-amt;
  }
  else if(sym=='+')
  {
    answer=total+amt;
  }
  else if(sym=='*')
  {
    answer=total*amt;
  }
  else if(sym=='/')
  {
    answer=total/amt;
  }

  return answer;
}