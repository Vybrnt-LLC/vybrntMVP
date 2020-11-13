import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/create_event_bloc/create_event_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/home_categories.dart';

class EventDestinationField extends StatelessWidget {
  const EventDestinationField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEventBloc, CreateEventState>(
      //condition: (p, c) => p.categories.length != c.categories.length,
      builder: (context, state) {
        return Container(
          height: 130,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: HomeCategories.predefinedColors.length - 1,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
            itemBuilder: (context, index) {
              final itemCategory = HomeCategories.predefinedColors[index + 1];
              return GestureDetector(
                onTap: () {
                  context.bloc<CreateEventBloc>().add(
                      CreateEventEvent.categoryChanged(
                          itemCategory.documentName));
                },
                child: Container(
                  width: 75,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        //color: itemCategory.color,
                        elevation: 4,
                        shape: CircleBorder(
                          side: state.categories
                                  .contains(itemCategory.documentName)
                              ? const BorderSide(width: 4)
                              : BorderSide.none,
                        ),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundImage:
                              AssetImage(itemCategory.circleImageUrl),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //           fit: BoxFit.fill,
                        //           image: AssetImage(
                        //               itemCategory.patternImageUrl))),
                        //   width: 50,
                        //   height: 50,
                        // ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        itemCategory.title,
                        textWidthBasis: TextWidthBasis.parent,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
