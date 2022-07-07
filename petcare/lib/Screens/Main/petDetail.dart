import 'package:flutter/material.dart';
import 'package:petcare/Model/petModel.dart';
import 'package:petcare/Screens/Main/petprofile.dart';
import 'package:petcare/constants.dart';

class PetDetail extends StatefulWidget {
  PetData pet;
  PetDetail({Key? key, required this.pet}) : super(key: key);

  @override
  State<PetDetail> createState() => _PetDetailState();
}

class _PetDetailState extends State<PetDetail> {
  var height1;
  var width1;
  @override
  Widget build(BuildContext context) {
    height1 = MediaQuery.of(context).size.height;
    width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height1,
        width: width1,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: height1/2.1,
                width: width1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: widget.pet.pet == "dog" ? AssetImage("images/dog.png") : AssetImage("images/cat.jpg") ,
                      fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(15),
                height: height1/1.8,
                width: width1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))
                ),
                child: ListView(
                  children: [
                    Center(child: Text(widget.pet.name,style: TextStyle(color: Colors.black87,fontSize: 35,fontWeight: FontWeight.bold,fontFamily: "Futura"),)),
                    SizedBox(height: height1*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height1*0.07,
                          width: width1*0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: primaryColor.withOpacity(0.5)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Months",style: TextStyle(color: Colors.black87,fontFamily: "Futura",fontWeight: FontWeight.bold,fontSize: 15),),
                              Text(widget.pet.age,style: TextStyle(color: Colors.black87,fontFamily: "Futura",fontWeight: FontWeight.normal,fontSize: 13),),
                            ],
                          ),
                        ),
                        Container(
                          height: height1*0.07,
                          width: width1*0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: primaryColor.withOpacity(0.5)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Breed",style: TextStyle(color: Colors.black87,fontFamily: "Futura",fontWeight: FontWeight.bold,fontSize: 15),),
                              FittedBox(child: Text(widget.pet.breed,style: TextStyle(color: Colors.black87,fontFamily: "Futura",fontWeight: FontWeight.normal,fontSize: 13))),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: height1*0.04,),
                    PhysicalModel(
                      elevation: 3,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: height1*0.1,
                        width: width1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Feeding Schedule",style: TextStyle(color: Colors.black87,fontFamily: "Futura",fontWeight: FontWeight.bold,fontSize: 18),),
                            Text(widget.pet.feeding),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height1*0.02,),
                    PhysicalModel(
                      elevation: 3,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: height1*0.1,
                        width: width1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Can be Alone",style: TextStyle(color: Colors.black87,fontFamily: "Futura",fontWeight: FontWeight.bold,fontSize: 18),),
                            Text(widget.pet.alone + " hours"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height1*0.02,),
                    PhysicalModel(
                      elevation: 3,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: height1*0.1,
                        width: width1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Medication",style: TextStyle(color: Colors.black87,fontFamily: "Futura",fontWeight: FontWeight.bold,fontSize: 18),),
                            Text(widget.pet.medication),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height1*0.04,),
                    Text("About",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "Futura"),),
                    SizedBox(height: height1*0.01,),
                    Text(widget.pet.vetInfo),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 15,
                left: 15,
                child: Container(
                  height: height1*0.04,
                  width: height1*0.04,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: IconButton(onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PetProfile())),icon: Icon(Icons.arrow_back_ios,color: Colors.black87,size: 15,),)),
                ))
          ],
        ),
      ),
    );
  }
}
