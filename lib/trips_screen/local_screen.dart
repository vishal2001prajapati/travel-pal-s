import 'package:flutter/material.dart';

class LocalScreen extends StatefulWidget {
  const LocalScreen({Key? key}) : super(key: key);

  @override
  State<LocalScreen> createState() => _LocalScreenState();
}

class _LocalScreenState extends State<LocalScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 55,
                  //width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                      controller: searchController,
                      /*    onFieldSubmitted: (v) async {
                        setState(() {
                          _showRecentSearch = v.length == 0;
                        });
                        if (_tabController.index == 0) {
                          await _mEvents.getUserSearch(
                              isRefersh: true, searchText: _mEvents.titleCtrl.text);
                        } else {
                          await _mEvents.getPollSearch(
                              isRefersh: true, searchText: _mEvents.titleCtrl.text);
                        }
                        setState(() {});
                        print(v.length);
                      },*/
                      textInputAction: TextInputAction.search,
                      /* style: AppString.normal(AppColor.black, 14),*/
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, right: 10.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 5.0, bottom: 5.0, right: 5.0),
                          child: GestureDetector(
                            onTap: () {
                              searchController.text = '';

                              /* _mEvents.titleCtrl.text = "";
                              _showRecentSearch = true;
                              _mEvents.loadPref();*/
                            },
                            child: const Icon(
                              Icons.cancel,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: "Search Here",
                      )),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
