import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';

class EditOrgFAQTab extends StatefulWidget {
  final EditOrgState state;
  final String name;

  const EditOrgFAQTab({Key key, this.state, this.name}) : super(key: key);
  @override
  _EditOrgFAQTabState createState() => _EditOrgFAQTabState();
}

class _EditOrgFAQTabState extends State<EditOrgFAQTab> {
  final _formKey = GlobalKey<FormState>();
  final snackBar = const SnackBar(content: Text('Submitted!'));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: CustomScrollView(
          key: PageStorageKey<String>(widget.name),
          slivers: <Widget>[
            const SliverToBoxAdapter(
                child: Text('Add a new Frequently Asked Question')),
            SliverToBoxAdapter(
              child: TextFormField(
                style: const TextStyle(fontSize: 18.0),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    size: 30.0,
                  ),
                  labelText: 'Question',
                ),
                validator: (input) =>
                    input.trim().isEmpty ? 'Please enter a valid name' : null,
                onChanged: (input) => context
                    .bloc<EditOrgBloc>()
                    .add(EditOrgEvent.questionChanged(input)),
              ),
            ),
            //SizedBox(height: 20),
            SliverToBoxAdapter(
              child: TextFormField(
                style: const TextStyle(fontSize: 18.0),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.book,
                    size: 30.0,
                  ),
                  labelText: 'Answer',
                ),
                validator: (input) => input.trim().length < 0
                    ? 'Please enter a abbreviation less than 10 characters'
                    : null,
                onChanged: (input) => context
                    .bloc<EditOrgBloc>()
                    .add(EditOrgEvent.answerChanged(input)),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(20.0),
                height: 40.0,
                width: 250.0,
                child: FlatButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();

                      // setState(() {
                      //   _isLoading = true;
                      // });
                    }
                    final orgID = widget.state.org.orgID.getOrCrash();
                    print(orgID);
                    context.bloc<EditOrgBloc>().add(EditOrgEvent.saveFAQ(
                        widget.state.org.orgID.getOrCrash()));

                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    'Save FAQ',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final number = index + 1;
                  return Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.indigoAccent,
                          child: Text('$number'),
                          foregroundColor: Colors.white,
                        ),
                        title: Text(widget.state.faqs[index].question),
                        subtitle: Text(widget.state.faqs[index].answer),
                      ),
                    ),
                    actions: <Widget>[
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () => context.bloc<EditOrgBloc>().add(
                            EditOrgEvent.removeFAQ(
                                widget.state.faqs[index].faqID.getOrCrash(),
                                widget.state.org.orgID.getOrCrash())),
                      ),
                    ],
                  );
                },
                childCount: widget.state.faqs.size,
              ),
            )
          ],
        ),
      ),
    );
  }
}
