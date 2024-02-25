import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterproject/db_handler.dart';
import 'package:flutterproject/model.dart';

class AddUpadetTask extends StatefulWidget {
  @override
  State<AddUpadetTask> createState() => _AddUpadetTaskState();
}

class _AddUpadetTaskState extends State<AddUpadetTask> {
  DBHelper? dbHelper;
  late Future<List<TodoModel>> dataList;

  final _formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    dbHelper = DBHelper();
    loadData();
  }

  loadData() async {
    dataList = dbHelper!.getDataList();
  }

  @override
  Widget build(BuildContext context) {
    final titleControler = TextEditingController();
    final dateControler = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่ม To-Do List',
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Itim",
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        controller: titleControler,
                        decoration: InputDecoration(
                          labelText: 'โน้ต',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'กรุณากรอกข้อมูล';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        controller: dateControler,
                        decoration: InputDecoration(
                          labelText: 'กำหนดระยะเวลา',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'กรุณากรอกข้อมูล';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              Positioned(
                left: 200,
                top: 60,
                child: Container(
                  width: 140,
                  height: 51,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),

              // SizedBox(
              //   width: MediaQuery.of(context).size.width,
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Material(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(50),
              //           child: InkWell(
              //             onTap: () {},
              //             child: Container(
              //               alignment: Alignment.center,
              //               decoration: BoxDecoration(
              //                 border: Border.all(
              //                   color: Colors.red,
              //                   width: 1,
              //                 ),
              //                 borderRadius: BorderRadius.circular(50),
              //               ),
              //               margin: const EdgeInsets.symmetric(horizontal:35),
              //               padding: const EdgeInsets.symmetric(horizontal: 10),
              //               height: 50,
              //               width: 130,
              //               child: const Text(
              //                 'ยกเลิก',
              //                 style: TextStyle(
              //                   color: Colors.red,
              //                   fontSize: 20,
              //                   fontFamily: "Itim",
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Material(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(50),
              //           child: InkWell(
              //             onTap: () {},
              //             child: Container(
              //               alignment: Alignment.center,
              //               decoration: BoxDecoration(
              //                 border: Border.all(
              //                   color: Colors.green,
              //                   width: 1,
              //                 ),
              //                 borderRadius: BorderRadius.circular(50),
              //               ),
              //               margin: const EdgeInsets.symmetric(horizontal: 50),
              //               padding: const EdgeInsets.symmetric(horizontal: 10),
              //               height: 50,
              //               width: 130,
              //               child: const Text(
              //                 'บันทึก',
              //                 style: TextStyle(
              //                   color: Colors.green,
              //                   fontSize: 20,
              //                   fontFamily: "Itim",
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ]),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
