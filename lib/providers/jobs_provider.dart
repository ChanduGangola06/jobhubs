import 'package:flutter/material.dart';
import 'package:jobhubs/models/response/jobs/jobs_response.dart';
import 'package:jobhubs/services/helpers/jobs_helper.dart';

class JobsNotifier extends ChangeNotifier {
  late Future<List<JobsResponse>> jobList;

  Future<List<JobsResponse>> getJobs() {
    jobList = JobsHelper.getJobs();
    return jobList;
  }
}
