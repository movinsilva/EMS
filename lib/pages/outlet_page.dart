import 'package:ems/widgets/input_form_field.dart';
import 'package:flutter/material.dart';

class OutletPage extends StatelessWidget {
  const OutletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Expanded(
                    child: InputFormField(
                  label: "Search",
                  icon: Icons.search,
                )),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.wifi_tethering,
                  size: 35,
                  color: Colors.black54,
                )
              ],
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.lightBlue.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 8)
                            ]),
                        child: Row(
                          children: [
                            const Icon(Icons.question_mark_outlined),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Priyantha Stores",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text("95/C, Punsarawatta Road, Panadura", style: TextStyle(
                                  fontSize: 9
                                ),)
                              ],
                            ),
                            Expanded(child: Container(),),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: const Text("Explore", style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 50),
                              ),),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
