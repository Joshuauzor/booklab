import 'package:booklab/app/app.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_cubit.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_state.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartView extends StatefulWidget {
  const ChartView({Key? key}) : super(key: key);

  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'Chart'),
      backgroundColor: AppColors.secondaryColor,
      body: BlocConsumer<HomeViewCubit, HomeViewState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(30),
            child: context.read<HomeViewCubit>().customBooks.isNotEmpty
                ? BarChart(
                    BarChartData(
                      borderData: FlBorderData(
                        border: const Border(
                          top: BorderSide.none,
                          right: BorderSide.none,
                          left: BorderSide(width: 1),
                          bottom: BorderSide(width: 1),
                        ),
                      ),
                      groupsSpace: 10,
                      barGroups: [
                        ...context.watch<HomeViewCubit>().customBooks.map(
                              (e) => BarChartGroupData(
                                x: int.parse(e.price),
                                barRods: [
                                  BarChartRodData(
                                    toY: 6,
                                    width: 15,
                                    color: AppColors.primaryColor,
                                  ),
                                ],
                              ),
                            )

                        // BarChartGroupData(
                        //   x: 5,
                        //   barRods: [
                        //     BarChartRodData(
                        //       toY: 13,
                        //       width: 15,
                        //       color: AppColors.primaryColor,
                        //     ),
                        //   ],
                        // ),
                        // BarChartGroupData(
                        //   x: 6,
                        //   barRods: [
                        //     BarChartRodData(
                        //       toY: 17,
                        //       width: 15,
                        //       color: AppColors.primaryColor,
                        //     ),
                        //   ],
                        // ),
                        // BarChartGroupData(
                        //   x: 7,
                        //   barRods: [
                        //     BarChartRodData(
                        //       toY: 19,
                        //       width: 15,
                        //       color: AppColors.primaryColor,
                        //     ),
                        //   ],
                        // ),
                        // BarChartGroupData(
                        //   x: 8,
                        //   barRods: [
                        //     BarChartRodData(
                        //       toY: 21,
                        //       width: 15,
                        //       color: AppColors.primaryColor,
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  )
                : Center(
                    child: TextRegular(
                      'Add Custom Book to view analysis.',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
