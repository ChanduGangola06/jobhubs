import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhubs/constants/app_constants.dart';
import 'package:jobhubs/models/response/jobs/jobs_response.dart';
import 'package:jobhubs/providers/jobs_provider.dart';
import 'package:jobhubs/views/screens/jobs/job_details_page.dart';
import 'package:jobhubs/views/screens/jobs/widgets/jobs_horizotal_tile.dart';
import 'package:provider/provider.dart';

class PopularJobs extends StatelessWidget {
  const PopularJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<JobsNotifier>(
      builder: (context, jobsNotifier, child) {
        jobsNotifier.getJobs();
        return SizedBox(
          height: hieght * 0.28,
          child: FutureBuilder<List<JobsResponse>>(
            future: jobsNotifier.jobList,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else if (snapshot.data!.isEmpty) {
                return const Text("No Jobs Available");
              } else {
                final jobs = snapshot.data;

                return ListView.builder(
                  itemCount: jobs!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var job = jobs[index];
                    return JobHorizontalTile(
                      job: job,
                      onTap: () {
                        Get.to(() => const JobDetails());
                      },
                    );
                  },
                );
              }
            },
          ),
        );
      },
    );
  }
}
