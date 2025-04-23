import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Form',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FormScreen(),
    );
  }
}

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String _gender = 'Male';
  List<String> _interests = [];
  String? _selectedCountry;

  final List<String> countries = ['India', 'USA', 'Germany', 'Japan'];

  void _submitForm() {
    if (_formKey.currentState!.validate() && _selectedCountry != null) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Form Submitted"),
          content: Text(
            "Name: ${_nameController.text}\n"
                "Email: ${_emailController.text}\n"
                "Gender: $_gender\n"
                "Interests: ${_interests.join(', ')}\n"
                "Country: $_selectedCountry",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  Widget _buildGenderRadio(String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(
          value: value,
          groupValue: _gender,
          onChanged: (val) {
            setState(() {
              _gender = val!;
            });
          },
        ),
        Text(value),
      ],
    );
  }

  Widget _buildInterestCheckbox(String interest) {
    return CheckboxListTile(
      title: Text(interest),
      value: _interests.contains(interest),
      onChanged: (val) {
        setState(() {
          if (val == true) {
            _interests.add(interest);
          } else {
            _interests.remove(interest);
          }
        });
      },
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interactive Form')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                value!.isEmpty ? 'Please enter your name' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) return 'Please enter your email';
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Invalid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) =>
                value!.length < 6 ? 'Min 6 characters' : null,
              ),
              const SizedBox(height: 20),
              const Text("Gender", style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: ['Male', 'Female', 'Other']
                    .map((gender) => _buildGenderRadio(gender))
                    .toList(),
              ),
              const SizedBox(height: 10),
              const Text("Interests", style: TextStyle(fontWeight: FontWeight.bold)),
              _buildInterestCheckbox("Sports"),
              _buildInterestCheckbox("Music"),
              _buildInterestCheckbox("Travel"),
              const SizedBox(height: 10),
              const Text("Country", style: TextStyle(fontWeight: FontWeight.bold)),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                value: _selectedCountry,
                hint: const Text("Select country"),
                items: countries
                    .map((country) =>
                    DropdownMenuItem(value: country, child: Text(country)))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedCountry = val;
                  });
                },
                validator: (value) =>
                value == null ? 'Please select a country' : null,
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
