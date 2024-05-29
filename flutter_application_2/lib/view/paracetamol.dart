import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/AddCart.dart';
import 'package:flutter_application_2/model/createAccount.dart';

class ListItemPage extends StatelessWidget {
  final int itemTitle;

  ListItemPage(this.itemTitle);

  @override
  Widget build(BuildContext context) {
    if (itemTitle == 1) {
      return Scaffold(
          body: Column(children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 795,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.vertical,

            children: [
              Column(children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  height: 230,
                  width: double.infinity,
                  color: Color.fromARGB(255, 154, 202, 241),
                  child: Image.asset(
                    'assets/image copy.png',
                    width: 400,
                    height: 220,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text("Paracetamol", style: TextStyle(fontSize: 30)),
                ),
              ]),
              SizedBox(
                height: 40,
              ),
              Text("Paracetamol",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 4,
              ),
              Text(
                  "Paracetamol is a commonly used medicine that can help treat pain and reduce a high temperature (fever).\nIt's typically used to relieve mild or moderate pain, such as headaches, toothache or sprains, and reduce fevers caused by illnesses such as colds and flu.",
                  style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 30,
              ),
              Text("Dosage",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 4,
              ),
              Text(
                  "For adults and children older than 16 years: 4 g of paracetamol per day, equivalent to 4000 mg, or 8 500 mg tablets, at a rate of one or two tablets every 4 hours, 4 times daily when necessary. \nThe patient may be exposed to serious liver poisoning if he takes an overdose. that..",
                  style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 30,
              ),
              Text("Potential side effects",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 4,
              ),
              Text(
                  "Long-term use of paracetamol can cause : \ntiredness.\nbreathlessness.\nyour fingers and lips to go blue.\nanaemia (low red blood cell count) \nliver and kidney damage.\nheart disease and stroke if you have high blood pressure.",
                  style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 30,
              ),
              Text("paracetamol drug instruction for use",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 4,
              ),
              Text(
                  "The usual dose of paracetamol is one or two 500mg tablets at a time up to 4 times in 24 hours with a maximum of 8 tablets in 24 hours.\nDo not take paracetamol with other medicines containing paracetamol because there is a risk of overdose",
                  style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
        Row(children: [
          Container(
            margin: EdgeInsets.only(left: 8),
            width: 80,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              onPressed: () {
                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (),
                    ));*/
              },
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          //////////// Add to cart button
          Expanded(
              child: Container(
            margin: EdgeInsets.only(right: 8),
            width: 250,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart(),
                    ));
              },
              child: Text(
                "Add to cart",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ))
        ]),
      ]));
    }

    ////Lortadine
    if (itemTitle == 2) {
      return Scaffold(
        body: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 795,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,

              children: [
                Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    height: 230,
                    width: double.infinity,
                    color: Color.fromARGB(255, 154, 202, 241),
                    child: Image.asset(
                      'assets/image copy 2.png',
                      width: 400,
                      height: 220,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text("Loratadine", style: TextStyle(fontSize: 30)),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Text("Loratadine",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "This medication is an antihistamine that treats symptoms such as itching, runny nose, watery eyes, and sneezing from \"hay fever\" and other allergies.\n It is also used to relieve itching from hives.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Dosage",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Loratadine comes as 10mg tablets and as a liquid medicine (labelled either 5mg/5ml or 1mg/1ml). \n The usual dose in adults is 10mg once a day.\n Doses are usually lower for people with liver problems.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Potential side effects",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "The most common side effect of loratadine is feeling sleepy. This happens in more than 1 in 100 people. \n Side effects in children may include: \n Headaches \n feeling tired or nervous",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Loratadine drug instruction for use",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Loratadine comes as 2 different types of tablet: ordinary and melt-in-the-mouth tablets.\n Swallow ordinary loratadine tablets with a drink of water, milk or juice.\n Melt-in-the-mouth tablets dissolve instantly on your tongue without needing a drink. Be careful not to crush them when you take them out of the packet.\n  You can take loratadine with or without food.",
                    style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 8),
              width: 80,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {
                  /*  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => createA(),
                      ));*/
                },
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            //////////// Add to cart button
            Expanded(
                child: Container(
              margin: EdgeInsets.only(right: 8),
              width: 250,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      ));
                },
                child: Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ))
          ]),
        ]),
      );
    }

    //////////////// Benylin
    if (itemTitle == 3) {
      return Scaffold(
        body: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 795,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,

              children: [
                Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    height: 230,
                    width: double.infinity,
                    color: Color.fromARGB(255, 154, 202, 241),
                    child: Image.asset(
                      'assets/image copy 4.png',
                      width: 400,
                      height: 220,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text("Benylin", style: TextStyle(fontSize: 30)),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Text("Benylin",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "This medication is used for temporary relief of coughs without phlegm that are caused by certain infections of the air passages (such as sinusitis, common cold)",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Dosage",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Take this medication by mouth, usually every 4 to 12 hours as needed or as directed by your doctor. If stomach upset occurs, take with food or milk.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Potential side effects",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Drowsiness, dizziness, constipation, stomach upset, blurred vision, or dry mouth/nose/throat may occur.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Benylin drug instruction for use",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Take this medication by mouth, usually every 4 to 12 hours as needed or as directed by your doctor. \n If stomach upset occurs, take with food or milk. \n Use a medication-measuring device to measure your dose of liquid medication.",
                    style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 8),
              width: 80,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {
                  /*  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => createA(),
                      ));*/
                },
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            //////////// Add to cart button
            Expanded(
                child: Container(
              margin: EdgeInsets.only(right: 8),
              width: 250,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      ));
                },
                child: Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ))
          ]),
        ]),
      );
    }

    /////////////////Amoxil
    if (itemTitle == 4) {
      return Scaffold(
        body: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 795,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,

              children: [
                Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    height: 230,
                    width: double.infinity,
                    color: Color.fromARGB(255, 154, 202, 241),
                    child: Image.asset(
                      'assets/image copy 3.png',
                      width: 400,
                      height: 220,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text("Amoxil", style: TextStyle(fontSize: 30)),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Text("Amoxil",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Amoxicillin is used to treat bacterial infections in many different parts of the body. \n It is also used with other medicines (e.g., clarithromycin, lansoprazole) to treat H. pylori infection and duodenal ulcers.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Dosage",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "It is usually taken every 12 hours (twice a day) or every 8 hours (three times a day) with or without food.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Potential side effects",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Abdominal or stomach cramps or tenderness \n back, leg, or stomach pains \n black, tarry stools\n bleeding gums\n bloody nose",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Amoxil drug instruction for use",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Amoxicillin comes as a capsule, a tablet, a chewable tablet, and as a suspension (liquid) to take by mouth.",
                    style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 8),
              width: 80,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {
                  /* Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => createA(),
                      ));*/
                },
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            //////////// Add to cart button
            Expanded(
                child: Container(
              margin: EdgeInsets.only(right: 8),
              width: 250,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      ));
                },
                child: Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ))
          ]),
        ]),
      );
    }

    /////////////Flu out
    if (itemTitle == 5) {
      return Scaffold(
        body: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 795,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,

              children: [
                Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    height: 230,
                    width: double.infinity,
                    color: Color.fromARGB(255, 154, 202, 241),
                    child: Image.asset(
                      'assets/flu-out.png',
                      width: 400,
                      height: 220,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text("Flu out", style: TextStyle(fontSize: 30)),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Text("Flu out",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "This combination medication is used to temporarily treat cough, stuffy nose, body aches, and other symptoms (such as fever, headache, sore throat) caused by the common cold, flu, or other breathing illnesses",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Dosage",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Adults and adolescents 12 years of age and older: One tablet four times per day not to exceed 4 tablets in 24 hours.",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Potential side effects",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "sleeping may occur. If any of these effects last or get worse, contact your doctor or pharmacist promptly",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Text("Flu out drug instruction for use",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Take this medication by mouth with or without food or as directed by your doctor.\nThis medication can be taken with food or milk if stomach upset occurs.\nIf you are using a liquid form, carefully measure your prescribed dose using a medication-measuring device or spoon.",
                    style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 8),
              width: 80,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            //////////// Add to cart button
            Expanded(
                child: Container(
              margin: EdgeInsets.only(right: 8),
              width: 250,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      ));
                },
                child: Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ))
          ]),
        ]),
      );
    }
    return build(context);
  }
}

  /* ListView(
          // This next line does the trick.
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Image.asset(
              'assets/image copy.png',
              width: 300,
              height: 180,
            ),
            Text(
              'Paracetamol',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "About the product \n Paracetamol is a commonly used medicine that can help treat pain and reduce a high temperature (fever). It's typically used to relieve mild or moderate pain, such as headaches, toothache or sprains, and reduce fevers caused by illnesses such as colds and flu.",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "Dosage \n For adults and children older than 16 years: 4 g of paracetamol per day, equivalent to 4000 mg, or 8 500 mg tablets, at a rate of one or two tablets every 4 hours, 4 times daily when necessary. The patient may be exposed to serious liver poisoning if he takes an overdose. that.",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "Potential side effects \n Long-term use of paracetamol can cause:\n tiredness. \n breathlessness. \n your fingers and lips to go blue.\n anaemia (low red blood cell count) \n liver and kidney damage. \n heart disease and stroke if you have high blood pressure.",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "Paracetamol drug instruction for use \n The usual dose of paracetamol is one or two 500mg tablets at a time up to 4 times in 24 hours with a maximum of 8 tablets in 24 hours. Do not take paracetamol with other medicines containing paracetamol because there is a risk of overdose",
              style: TextStyle(fontSize: 12),
            ),
          ],
        )*/

