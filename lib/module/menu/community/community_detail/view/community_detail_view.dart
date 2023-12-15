import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';
import '../controller/community_detail_controller.dart';
import '../state/community_detail_state.dart';
import 'package:get_it/get_it.dart';

class CommunityDetailView extends StatefulWidget {
  const CommunityDetailView({Key? key}) : super(key: key);

  @override
  State<CommunityDetailView> createState() => _CommunityDetailViewState();
}

class _CommunityDetailViewState extends State<CommunityDetailView> {
  CommunityDetailController controller = CommunityDetailController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CommunityDetailController>()) {
      GetIt.I.unregister<CommunityDetailController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<CommunityDetailController, CommunityDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<CommunityDetailController, CommunityDetailState>(
          builder: (context, state) {
            final bloc = context.read<CommunityDetailController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CommunityDetailController controller,
    CommunityDetailState state,
  ) {
    return Scaffold(
        backgroundColor: Color(0xFFF0F0F0),
        appBar: AppBar(
          title: Text("Community"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                  "https://herophotographyjakarta.files.wordpress.com/2016/12/group1.jpg"),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 40,
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Group oleh naruto",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Komunitas Pasukan Hoax SeDunia",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            size: 15,
                          ),
                          Text("Group Privat . "),
                          Text("131.587"),
                          Text("anggota")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://awsimages.detik.net.id/community/media/visual/2023/06/20/ultah-jokowi-hari-ini-simak-lagi-biografi-joko-widodo-lengkap-1_169.jpeg?w=600&q=90"),
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.sukabumiupdate.com/media/2023/11/21/1700548214_655c4e761a1b4_Wy7L4MC90cTeVTrtTrxI.webp"),
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://img.inews.co.id/media/600/files/networks/2023/10/05/39e38_yakjus-dan-makjus.jpg"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: ElevatedButton.icon(
                                label: Text("Bergabung"),
                                icon: Icon(Icons.people),
                                onPressed: () {},
                              ),
                            )),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  var jitsiMeet = JitsiMeet();
                                  var options = JitsiMeetConferenceOptions(
                                    serverURL: "https://meet.jit.si",
                                    room: "Flutter Aneh",
                                    configOverrides: {
                                      "startWithAudioMuted": false,
                                      "startWithVideoMuted": false,
                                      "subject": "Bisa ae",
                                    },
                                    featureFlags: {
                                      "unsaferoomwarning.enabled": false
                                    },
                                    userInfo: JitsiMeetUserInfo(
                                      displayName: "Flutter user",
                                      email: "developermania123@gmail.com",
                                    ),
                                  );
                                  jitsiMeet.join(options);
                                },
                                icon: Icon(Icons.video_call),
                                label: Text("Meet"),
                              ),
                            ))
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Unggulan",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://static.republika.co.id/uploads/images/inpicture_slide/dajjal-ilustrasi-_130111185010-565.jpg"),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, right: 10, left: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    hintText: 'Tulis sesuatu...',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Divider(),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: ElevatedButton.icon(
                                  label: Text("Polling"),
                                  icon: Icon(Icons.analytics),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: ElevatedButton.icon(
                                  label: Text("Foto"),
                                  icon: Icon(Icons.image),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 50,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Baru Saja Jadi",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        color: Colors.amber,
                        child: Center(child: Text('Entry')),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
