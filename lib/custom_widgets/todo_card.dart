import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.blue[200],
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xFFEF31F3),
          size: 27.5,
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            "Plan trip to Finland",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color: Color(0xFF40586F)),
          ),
        ),
        subtitle: Text("The family trip to Finland next winter"),
        trailing: SizedBox(
          width: 95,
          child: Row(
            children: [
              Icon(Icons.notifications_none_outlined),
              SizedBox(width: 10),
              Text(
                'yesterday',
                style: TextStyle(color: Color(0xffef31f3)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
