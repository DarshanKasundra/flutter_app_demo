class ListEvent {
  String eventId;
  String eventName;
  String mainBanner;
  String mainBannerPath;
  String description;
  String startDate;
  String endDate;
  String fees;
  String maxContestant;
  String winningPrize;
  String status;
  String createdDate;
  String updatedDate;

  ListEvent(
      {this.eventId,
        this.eventName,
        this.mainBanner,
        this.mainBannerPath,
        this.description,
        this.startDate,
        this.endDate,
        this.fees,
        this.maxContestant,
        this.winningPrize,
        this.status,
        this.createdDate,
        this.updatedDate});

  ListEvent.fromJson(Map<String, dynamic> json) {
    eventId = json['event_id'];
    eventName = json['event_name'];
    mainBanner = json['main_banner'];
    mainBannerPath = json['main_banner_path'];
    description = json['description'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    fees = json['fees'];
    maxContestant = json['max_contestant'];
    winningPrize = json['winning_prize'];
    status = json['status'];
    createdDate = json['created_date'];
    updatedDate = json['updated_Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['event_id'] = this.eventId;
    data['event_name'] = this.eventName;
    data['main_banner'] = this.mainBanner;
    data['main_banner_path'] = this.mainBannerPath;
    data['description'] = this.description;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['fees'] = this.fees;
    data['max_contestant'] = this.maxContestant;
    data['winning_prize'] = this.winningPrize;
    data['status'] = this.status;
    data['created_date'] = this.createdDate;
    data['updated_Date'] = this.updatedDate;
    return data;
  }
}