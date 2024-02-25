import 'package:flutter/material.dart';
import 'package:flutterproject/model.dart';
import 'db_handlernote.dart';
import 'add_note.dart';

class Note extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  DBHelperNote? dbHelpernote;
  late Future<List<NoteModel>> dataList;

  @override
  void initState() {
    super.initState();
    dbHelpernote = DBHelperNote();
    loadData();
  }

  void loadData() async {
    dataList = dbHelpernote!.getdataNote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Note',
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Itim",
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: dataList,
              builder: (context, AsyncSnapshot<List<NoteModel>> snapshot) {
                if (!snapshot.hasData || snapshot.data == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text('ไม่พบข้อมูลที่บันทึก Note'),
                  );
                } else {
                  return ListView.builder(
                    shrinkWrap:  true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context , index){
                      int id = snapshot.data![index].id!.toInt();
                      String title = snapshot.data![index].title!.toString();
                      String description = snapshot.data![index].description!.toString();
                      return Dismissible(
                        key: ValueKey<int>(id),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 20),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction){
                          setState(() {
                            dbHelpernote!.delete(id);
                            dataList = dbHelpernote!.getdataNote();
                            snapshot.data!.remove(snapshot.data![index]);
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.white
                          ),
                          child: Column(
                            
                            children: [
                              const Divider(
                                height:3,
                                color: Colors.red,
                              ),
                              ListTile(
                                title: Text(title),
                                subtitle: Text(description),
                              ),
                              const Divider(
                                height:3,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                      );

                    },
                  );
                }
              },
            ),
          ),
          Positioned(
              left: 0, // Adjust the left position of the rectangle
              top: 770, // Adjust the top position of the rectangle
              child: Container(
                width: 430, // Width of the rectangle
                height: 40, // Height of the rectangle
                color: const Color.fromRGBO(255, 181, 167, 1),// Color of the rectangle
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(255, 181, 167, 1),
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddUpadetNote(),
            ),
          );
        },
      ),
    );
  }
}
