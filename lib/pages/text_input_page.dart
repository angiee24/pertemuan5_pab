// lib/pages/text_input_page.dart
import 'package:flutter/material.dart';

class TextInputPage extends StatefulWidget {
  const TextInputPage({super.key});

  @override
  State<TextInputPage> createState() => _TextInputPageState();
}

class _TextInputPageState extends State<TextInputPage> {
  // Controllers untuk mengelola text
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;
  String _displayText = '';

  @override
  void dispose() {
    // WAJIB dispose semua controller!
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. TextField Dasar
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
                hintText: 'Masukkan nama lengkap',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _displayText = 'Hello, $value!';
                });
              },
            ),
            const SizedBox(height: 16),

            // 2. TextField Email
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'contoh@email.com',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),

            // 3. TextField Password (dengan toggle visibility)
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Min. 8 karakter',
                prefixIcon: const Icon(Icons.lock),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
              obscureText: _obscurePassword,
            ),
            const SizedBox(height: 24),

            // Display text
            if (_displayText.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _displayText,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            const SizedBox(height: 16),

            // Tombol untuk ambil semua nilai
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final info = '''
Nama: ${_nameController.text}
Email: ${_emailController.text}
Password: ${'*' * _passwordController.text.length}
                  ''';
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Data Input'),
                      content: Text(info),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Tampilkan Data'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}