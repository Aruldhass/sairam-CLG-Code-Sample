import 'package:flutter/material.dart';



class Elder extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<Elder> {
  // Compulsory list data
  List<String> compulsoryTexts = ['medications ', 'walking'];
  List<bool> compulsoryChecked = [false, false];

  // Custom todo list data
  List<Map<String, dynamic>> customTodos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodoItem(String text) {
    if (text.trim().isEmpty) return;
    setState(() {
      customTodos.add({'text': text.trim(), 'isChecked': false});
      _controller.clear();
    });
  }

  Widget buildCheckboxItem(String text, bool isChecked, Function(bool?) onChanged) {
    return Card(
      child: CheckboxListTile(
        value: isChecked,
        onChanged: onChanged,
        title: Text(text),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Elder Todo_list'),
        //leading: Icon(Icons.menu),
        actions: [Icon(Icons.library_books_sharp)],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Compulsory',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            for (int i = 0; i < compulsoryTexts.length; i++)
              buildCheckboxItem(
                compulsoryTexts[i],
                compulsoryChecked[i],
                (bool? value) {
                  setState(() {
                    compulsoryChecked[i] = value ?? false;
                  });
                },
              ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Here you add your list',style: TextStyle(
               fontSize: 18,           // Change font size
               color: Colors.blue,     // Change text color
                fontWeight: FontWeight.w500,),),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: customTodos.length,
                itemBuilder: (context, index) {
                  return buildCheckboxItem(
                    customTodos[index]['text'],
                    customTodos[index]['isChecked'],
                    (bool? value) {
                      setState(() {
                        customTodos[index]['isChecked'] = value ?? false;
                      });
                    },
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Ask a new Todo list',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                ),
                SizedBox(width : 10),
                CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  radius: 20,
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => _addTodoItem(_controller.text),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
