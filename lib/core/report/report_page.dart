import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/report/report.dart';
import 'package:vybrnt_mvp/core/report/report_dtos.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';

class ReportScreen extends StatefulWidget {
  final String contentID;
  final String contentType;
  final String ownerID;
  final String ownerType;
  final String currentUserID;

  const ReportScreen(
      {Key key,
      this.currentUserID = '',
      this.contentID = '',
      this.contentType = '',
      this.ownerID = '',
      this.ownerType = ''})
      : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String message = '';
  final snackBar = const SnackBar(content: Text('Report submitted'));
  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Report Inappropriate or Objectable Content',
            style: TextStyle(fontSize: 15),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    labelText: 'Optional',
                    counterText: '',
                  ),
                  maxLength: 1000,
                  maxLines: null,
                  minLines: 5,
                  onChanged: (value) => message = value,
                )),
            const SizedBox(
              height: 15,
            ),
            Center(
                child: RaisedButton(
              onPressed: () async {
                submitReport(
                    contentID: widget.contentID,
                    contentType: widget.contentType,
                    ownerID: widget.ownerID,
                    ownerType: widget.ownerType,
                    currentUserID: widget.currentUserID,
                    message: message);
                Scaffold.of(context).showSnackBar(snackBar);
                await Future.delayed(const Duration(milliseconds: 1500));
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ))
          ],
        ));
  }
}

void submitReport(
    {String contentID,
    String contentType,
    String ownerID,
    String ownerType,
    String message,
    String currentUserID}) {
  Report report = Report.empty();
  final newReport = report.copyWith(
      senderID: currentUserID,
      contentID: contentID,
      contentType: contentType,
      ownerType: ownerType,
      ownerID: ownerID,
      message: message);
  final reportDto = ReportDto.fromDomain(newReport);

  reportsRef.doc(newReport.reportID.getOrCrash()).set(reportDto.toJson());
}
