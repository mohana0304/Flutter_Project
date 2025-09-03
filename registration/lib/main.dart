// import 'package:flutter/material.dart';

// void main() {
//   runApp(CoffeeShopApp());
// }

// class CoffeeShopApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Coffee Shop Registration',
//       theme: ThemeData(
//         primarySwatch: Colors.brown,
//         scaffoldBackgroundColor: Color(0xFFF5E8C7), // Beige background
//         textTheme: TextTheme(
//           headlineMedium: TextStyle(
//             fontFamily: 'Roboto',
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF3E2723), // Dark coffee brown
//           ),
//           bodyMedium: TextStyle(color: Color(0xFF4A2F27)),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Color(0xFF6F4E37), // Coffee brown button
//             foregroundColor: Colors.white,
//             textStyle: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//         inputDecorationTheme: InputDecorationTheme(
//           border: OutlineInputBorder(
//             borderSide: BorderSide(color: Color(0xFF8D6E63)),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Color(0xFF3E2723), width: 2),
//           ),
//           labelStyle: TextStyle(color: Color(0xFF4A2F27)),
//         ),
//       ),
//       home: RegistrationPage(),
//     );
//   }
// }

// class RegistrationPage extends StatefulWidget {
//   @override
//   _RegistrationPageState createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<RegistrationPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _ageController = TextEditingController();
//   final _addressController = TextEditingController();
//   final _phoneController = TextEditingController();

//   void _handleRegister() {
//     if (_formKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(
//               'Welcome, ${_nameController.text}! Registration Successful.'),
//           backgroundColor: Color(0xFF6F4E37),
//         ),
//       );
//       _formKey.currentState!.reset();
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Please fill in all fields correctly.'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _ageController.dispose();
//     _addressController.dispose();
//     _phoneController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Coffee Shop Registration'),
//         backgroundColor: Color(0xFF3E2723), // Dark coffee brown
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Icon(
//                 Icons.local_cafe,
//                 size: 60,
//                 color: Color(0xFF6F4E37),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Join Our Coffee Club',
//                 style: Theme.of(context)
//                     .textTheme
//                     .headlineMedium
//                     ?.copyWith(fontSize: 24),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(
//                   labelText: 'Full Name',
//                   border: OutlineInputBorder(),
//                   prefixIcon: Icon(Icons.person, color: Color(0xFF6F4E37)),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your full name';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16),
//               TextFormField(
//                 controller: _ageController,
//                 decoration: InputDecoration(
//                   labelText: 'Age',
//                   border: OutlineInputBorder(),
//                   prefixIcon: Icon(Icons.cake, color: Color(0xFF6F4E37)),
//                 ),
//                 keyboardType: TextInputType.number,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your age';
//                   }
//                   if (int.tryParse(value) == null || int.parse(value) <= 0) {
//                     return 'Please enter a valid age';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email Address',
//                   border: OutlineInputBorder(),
//                   prefixIcon: Icon(Icons.email, color: Color(0xFF6F4E37)),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
//                       .hasMatch(value)) {
//                     return 'Please enter a valid email';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16),
//               TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(),
//                   prefixIcon: Icon(Icons.lock, color: Color(0xFF6F4E37)),
//                 ),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   if (value.length < 6) {
//                     return 'Password must be at least 6 characters';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16),
//               TextFormField(
//                 controller: _addressController,
//                 decoration: InputDecoration(
//                   labelText: 'Address',
//                   border: OutlineInputBorder(),
//                   prefixIcon: Icon(Icons.home, color: Color(0xFF6F4E37)),
//                 ),
//                 maxLines: 2,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your address';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16),
//               TextFormField(
//                 controller: _phoneController,
//                 decoration: InputDecoration(
//                   labelText: 'Phone Number',
//                   border: OutlineInputBorder(),
//                   prefixIcon: Icon(Icons.phone, color: Color(0xFF6F4E37)),
//                 ),
//                 keyboardType: TextInputType.phone,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your phone number';
//                   }
//                   if (!RegExp(r'^\+?[\d\s-]{10,}$').hasMatch(value)) {
//                     return 'Please enter a valid phone number';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _handleRegister,
//                 child: Text('Register'),
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop Registration',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Color(0xFFF5E8C7), // Beige fallback background
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            color: Color(0xFF3E2723), // Dark coffee brown
          ),
          bodyMedium: TextStyle(color: Color(0xFF4A2F27)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF6F4E37), // Coffee brown button
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF8D6E63)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF3E2723), width: 2),
          ),
          labelStyle: TextStyle(color: Color(0xFF4A2F27)),
          filled: true,
          fillColor:
              Colors.white.withOpacity(0.9), // Semi-transparent for readability
        ),
      ),
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _ageController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();

  void _handleRegister() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'Welcome, ${_nameController.text}! Registration Successful.'),
          backgroundColor: Color(0xFF6F4E37),
        ),
      );
      _formKey.currentState!.reset();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all fields correctly.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _ageController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Shop Registration'),
        backgroundColor: Color(0xFF3E2723), // Dark coffee brown
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/coffee_bg.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3), // Slight overlay for readability
              BlendMode.darken,
            ),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.local_cafe,
                  size: 60,
                  color: Color(0xFF6F4E37),
                ),
                SizedBox(height: 10),
                Text(
                  'Join Our Coffee Club',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontSize: 24, color: Colors.white), // White for contrast
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person, color: Color(0xFF6F4E37)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _ageController,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.cake, color: Color(0xFF6F4E37)),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    if (int.tryParse(value) == null || int.parse(value) <= 0) {
                      return 'Please enter a valid age';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email, color: Color(0xFF6F4E37)),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock, color: Color(0xFF6F4E37)),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.home, color: Color(0xFF6F4E37)),
                  ),
                  maxLines: 2,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone, color: Color(0xFF6F4E37)),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (!RegExp(r'^\+?[\d\s-]{10,}$').hasMatch(value)) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _handleRegister,
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
