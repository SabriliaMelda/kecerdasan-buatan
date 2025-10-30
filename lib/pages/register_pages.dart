part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isHidden = true;
  bool _isHiddenCourse = true;
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;
  final _emailTextboxController = TextEditingController();
  final _passwordTextboxController = TextEditingController();

  void _toogleUsernameView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _toogleCourseView() {
    setState(() {
      _isHiddenCourse = !_isHiddenCourse;
    });
  }

  void _tooglePasswordView() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  void _toogleConfirmPasswordView() {
    setState(() {
      _isHiddenConfirmPassword = !_isHiddenConfirmPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/a.jpg'), // Ganti dengan path gambar latar belakang Anda
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Foreground Content
            ListView(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              children: [
                Image.asset('assets/images/logo1.png', height: 333),
                SizedBox(height: 25),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello..",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomePages()),
                          );
                        },
                        child: Icon(Icons.close, size: 30),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                TextField(
                  obscureText: _isHidden,
                  controller: _emailTextboxController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "example@gmail.com",
                    labelText: "username/email",
                    suffixIcon: InkWell(
                      onTap: _toogleUsernameView,
                      child: Icon(_isHidden
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: _isHiddenPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "password",
                    labelText: "password",
                    suffixIcon: InkWell(
                      onTap: _tooglePasswordView,
                      child: Icon(_isHiddenPassword
                          ? Icons.lock_outline
                          : Icons.lock_outline),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: _isHiddenConfirmPassword,
                  controller: _passwordTextboxController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "confirm password",
                    labelText: "confirm password",
                    suffixIcon: InkWell(
                      onTap: _toogleConfirmPasswordView,
                      child: Icon(_isHiddenConfirmPassword
                          ? Icons.lock_outline
                          : Icons.lock_outline),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 16, 96, 160),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account?",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
