import 'package:flutter/material.dart';

class TransactionPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(27, 20, 100,1.0),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            // Title
            Text(
              'Transactions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 5,),

            // List of transactions
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 5),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    color: Colors.white10,
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border(
                          right: BorderSide(
                            color: (index%2 != 0) ? Color.fromRGBO(46, 213, 115,1.0) : Color.fromRGBO(255, 71, 87,1.0),
                            width: 5
                          )
                        ),
                      ),
                      child: ListTile(
                        // user dp
                        leading: CircleAvatar(),

                        // username / email
                        title: Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),

                        // user wallet number & date
                        subtitle: Text(
                          '0010797162465',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13
                          ),
                        ),

                        // Amount
                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Ksh. 200',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              DateTime.now().toString().split(' ')[0],
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}