import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  bool isContact = true;
  int index = 0;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtAdd = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Resume Workspace",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              width: MediaQuery.sizeOf(context).width,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isContact = true;
                          index = 0;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: isContact
                                          ? Colors.amber
                                          : Colors.blue,
                                      width: 2))),
                          alignment: Alignment.bottomCenter,
                          child: const Text(
                            "Contact",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isContact = false;
                          index = 1;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: isContact == false
                                          ? Colors.amber
                                          : Colors.blue,
                                      width: 2))),
                          alignment: Alignment.bottomCenter,
                          child: const Text(
                            "Photo",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  child: IndexedStack(
                    index: index,
                    children: [
                      Form(
                        key: formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.person),
                                  label: Text("Name")),
                              keyboardType: TextInputType.name,
                              controller: txtName,
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Name is Required";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                    icon: Icon(Icons.email),
                                    label: Text("Email")),
                                keyboardType: TextInputType.emailAddress,
                                controller: txtEmail,
                                validator: (value) {
                                  if (value!.isEmpty || value == null) {
                                    return "Email is Required";
                                  } else if (!RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                          .hasMatch(value)) {
                                    return "Invalid email";
                                  }
                                  return null;
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                             TextFormField(
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.phone_android),
                                  label: Text("Phone")),
                              controller: txtPhone,
                              validator: (value) {
                                if(value!.isEmpty || value == null)
                                  {
                                    return "Moblie is Required";
                                  }
                                else if(value!.length!=10)
                                  {
                                    return "Invalid Mobile Number";
                                  }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                             TextFormField(
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.streetAddress,
                              maxLines: 3,
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.email),
                                  label: Text("Address")),
                              controller: txtAdd,
                              validator: (value) {
                                if(value!.isEmpty || value==null)
                                  {
                                    return "Address is Required";
                                  }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if (formkey ==
                                      formkey.currentState!.validate()) {
                                    String name = txtName.text;
                                    String email = txtEmail.text;
                                    String phone = txtPhone.text;
                                    String add = txtAdd.text;
                                  }
                                },
                                child: const Text("Save")),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.blueGrey,
                          height: 150,
                          width: MediaQuery.sizeOf(context).width * 0.90,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              const CircleAvatar(radius: 50),
                              Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
