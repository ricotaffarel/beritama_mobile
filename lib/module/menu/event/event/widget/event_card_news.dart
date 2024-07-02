// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class EventCardNews extends StatelessWidget {
  Map<String, String> eventList;

  EventCardNews({Key? key, required this.eventList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(
        right: 10.0,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  eventList['image'] ??
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  "${eventList['title']}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 20.0,
                      color: Colors.grey[800],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "${eventList['author']}",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 20.0,
                      color: Colors.grey[800],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "${eventList['date']}",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${eventList['time']}",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShimmerEventCardNews extends StatelessWidget {
  ShimmerEventCardNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 3.0,
                  ),
                  Container(
                    height: 10.0,
                    width: 150.0,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10.0,
                        width: 20.0,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 10.0,
                        width: 150.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10.0,
                        width: 20.0,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 10.0,
                        width: 150.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 10.0,
                        width: 150.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
