import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_state_management/voting_store_base.dart';

final votingStore = VotingStore();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 200,),
            Text(
              'Enter your age:',
              style: TextStyle(fontSize: 22, color: Colors.black87 ),
            ),
            SizedBox(height: 10),
            Container(
              width: 120,
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    final newAge = int.tryParse(value) ?? 0;
                    votingStore.setAge(newAge);
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            Observer(
              builder: (context) {
                return Text(
                  votingStore.isEligible
                      ? 'You are eligible to vote!'
                      : 'You are not eligible to vote.',
                  style: votingStore.isEligible ?
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green):
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)

                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
