import 'package:flutter/material.dart';
class LeaveRequestPage extends StatefulWidget {
  @override
  _LeaveRequestPageState createState() => _LeaveRequestPageState();
}

class _LeaveRequestPageState extends State<LeaveRequestPage> {
  String? selectedLeaveType;
  DateTime? fromDate;
  DateTime? toDate;
  String duration = '';
  String dayType = 'Full day';
  bool isCompOff = false;

  final _formKey = GlobalKey<FormState>();

  Future<void> _selectDate(BuildContext context, bool isFromDate) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        if (isFromDate) {
          fromDate = picked;
        } else {
          toDate = picked;
        }
      });
    }
  }

  Widget _buildDateField(String label, DateTime? date, bool isFrom) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _selectDate(context, isFrom),
        child: AbsorbPointer(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: label,
              prefixIcon: Icon(Icons.calendar_today),
            ),
            controller: TextEditingController(
              text: date != null ? "${date.day}/${date.month}/${date.year}" : "",
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSegmentedControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: ['Full day', 'AN', 'FN'].map((type) {
        final isSelected = dayType == type;
        return Expanded(
          child: GestureDetector(
            onTap: () => setState(() => dayType = type),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: isSelected ? Colors.red.shade50 : Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(type == 'Full day' ? 12 : 0),
                  bottomLeft: Radius.circular(type == 'Full day' ? 12 : 0),
                  topRight: Radius.circular(type == 'FN' ? 12 : 0),
                  bottomRight: Radius.circular(type == 'FN' ? 12 : 0),
                ),
              ),
              child: Center(
                child: Text(
                  type,
                  style: TextStyle(
                    color: isSelected ? Colors.red : Colors.black,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCompOffToggle() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => isCompOff = false),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: !isCompOff ? Colors.red.shade50 : Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'No',
                  style: TextStyle(
                    color: !isCompOff ? Colors.red : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => isCompOff = true),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: isCompOff ? Colors.red.shade50 : Colors.transparent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'Yes',
                  style: TextStyle(
                    color: isCompOff ? Colors.red : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave Request"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      backgroundColor: const Color(0xFFF7F7F7),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Leave Type"),
              SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: selectedLeaveType,
                hint: Text("Select leave type"),
                items: ['Casual Leave', 'Sick Leave', 'Earned Leave']
                    .map((type) => DropdownMenuItem(
                  value: type,
                  child: Text(type),
                ))
                    .toList(),
                onChanged: (value) => setState(() => selectedLeaveType = value),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  _buildDateField("From date", fromDate, true),
                  SizedBox(width: 12),
                  _buildDateField("To date", toDate, false),
                ],
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: "Duration"),
              ),
              SizedBox(height: 16),
              _buildSegmentedControl(),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: "Reason for leave"),
              ),
              SizedBox(height: 16),
              Text("Is it a Comp Off?"),
              SizedBox(height: 8),
              _buildCompOffToggle(),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Employee Code",
                  suffixText: "Handover Duty",
                  suffixStyle: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: "Employee Name"),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: "Applicant's phone Number"),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Handle submit
                    }
                  },
                  child: Text("SUBMIT", style: TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
