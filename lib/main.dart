import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart' as google_fonts; // Import with alias
import 'package:flutter/src/services/asset_manifest.dart' as flutter_asset_manifest;
import 'package:google_fonts/src/asset_manifest.dart' as google_fonts_asset_manifest;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portfolio',
      theme: FlexColorScheme.light(
        scheme: FlexScheme.redWine,
        fontFamily: google_fonts.GoogleFonts.poppins().fontFamily, // Use qualified import
      ).toTheme,
      darkTheme: FlexColorScheme.dark(
        scheme: FlexScheme.redWine,
        fontFamily: google_fonts.GoogleFonts.poppins().fontFamily, // Use qualified import
      ).toTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 100),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              },
              icon: Icon(Icons.info),
              label: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info, size: 100),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
