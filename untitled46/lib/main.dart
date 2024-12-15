enum Team {
  FlutterDevelopment,
  IOSDevelopment,
  AndroidDevelopment,
  UIUXDesign,
}

enum Horoscope {
  Gemini,
  Leo,
  Aries,
  Sagittarius,
}

enum MemberLevel {
  Beginner,
  Intermediate,
  Advanced,
}

class ContactInformation {
  String phoneNumber;
  String email;

  ContactInformation({required this.phoneNumber, required this.email});
}

class NeonAcademyMember {
  String fullName;
  String title;
  Horoscope horoscope;
  MemberLevel memberLevel;
  String homeTown;
  int age;
  ContactInformation contactInformation;
  Team team;
  String? mentorLevel;

  NeonAcademyMember({
    required this.fullName,
    required this.title,
    required this.horoscope,
    required this.memberLevel,
    required this.homeTown,
    required this.age,
    required this.contactInformation,
    required this.team,
    this.mentorLevel,
  });
}

void filterMembersByAgeAndTeam(int age, Team team, List<NeonAcademyMember> members) {
  List<NeonAcademyMember> filteredMembers = members
      .where((member) => member.age > age && member.team == team)
      .toList();

  if (filteredMembers.isEmpty) {
    print("No members older than $age in ${team.name} Team.");
  } else {
    print("Members older than $age in ${team.name} Team:");
    for (var member in filteredMembers) {
      print(member.fullName);
    }
  }
}

void printTeamMembers(List<NeonAcademyMember> members, Team team) {
  List<NeonAcademyMember> teamMembers =
  members.where((member) => member.team == team).toList();

  print("Members in ${team.name} Team:");
  for (var member in teamMembers) {
    print(member.fullName);
  }
}

void describeMember(NeonAcademyMember member) {
  switch (member.team) {
    case Team.FlutterDevelopment:
      print("${member.fullName} is a skilled Flutter developer.");
      break;
    case Team.IOSDevelopment:
      print("${member.fullName} is an experienced iOS developer.");
      break;
    case Team.AndroidDevelopment:
      print("${member.fullName} is a talented Android developer.");
      break;
    case Team.UIUXDesign:
      print("${member.fullName} is a creative UI/UX designer.");
      break;
  }
}

void promoteMember(NeonAcademyMember member) {
  switch (member.team) {
    case Team.FlutterDevelopment:
      member.title = "Senior Flutter Developer";
      break;
    case Team.IOSDevelopment:
      member.title = "Senior iOS Developer";
      break;
    case Team.AndroidDevelopment:
      member.title = "Senior Android Developer";
      break;
    case Team.UIUXDesign:
      member.title = "Lead Designer";
      break;
  }
}

double calculateAverageAge(Team team, Iterable<NeonAcademyMember> members) {
  Iterable<NeonAcademyMember> teamMembers = members.where((member) => member.team == team);

  if (teamMembers.isEmpty) {
    print("No members found in the ${team.name} Team.");
    return 0.0;
  }

  int totalAge = teamMembers.fold(0, (sum, member) => sum + member.age);

  double averageAge = totalAge / teamMembers.length;

  return averageAge;
}

void describeTeam(Team team) {
  switch (team) {
    case Team.FlutterDevelopment:
      print("The Flutter Development Team is the backbone of our academy.");
      break;
    case Team.IOSDevelopment:
      print("The iOS Development Team is the future of our academy.");
      break;
    case Team.AndroidDevelopment:
      print("The Android Development Team is the powerhouse of our academy.");
      break;
    case Team.UIUXDesign:
      print("The UI/UX Design Team is the face of our academy.");
      break;
  }
}

List<ContactInformation> getContactInfoForTeam(Team team, List<NeonAcademyMember> members) {
  List<ContactInformation> contactInfoList = [];

  for (var member in members) {
    if (member.team == team) {
      contactInfoList.add(member.contactInformation);
    }
  }

  return contactInfoList;
}

void describeMemberBasedOnAge(NeonAcademyMember member) {
  switch (member.team) {
    case Team.FlutterDevelopment:
      if (member.age > 23) {
        print("${member.fullName} is a seasoned Flutter developer.");
      } else {
        print("${member.fullName} is a promising Flutter developer.");
      }
      break;

    case Team.IOSDevelopment:
      if (member.age > 25) {
        print("${member.fullName} is a senior iOS developer.");
      } else {
        print("${member.fullName} is a rising iOS developer.");
      }
      break;

    case Team.AndroidDevelopment:
      if (member.age > 22) {
        print("${member.fullName} is an experienced Android developer.");
      } else {
        print("${member.fullName} is a junior Android developer.");
      }
      break;

    case Team.UIUXDesign:
      if (member.age < 24) {
        print("${member.fullName} is a rising star in the design world.");
      } else {
        print("${member.fullName} is a creative design expert.");
      }
      break; default:
    print("${member.fullName} is part of an unknown team.");
  }
}

void main() {
  List<NeonAcademyMember> members = [
    NeonAcademyMember(
      fullName: "Faruk Biberoğlu",
      title: "A1 Level Flutter Developer",
      horoscope: Horoscope.Gemini,
      memberLevel: MemberLevel.Beginner,
      homeTown: "Rize",
      age: 25,
      contactInformation: ContactInformation(
        phoneNumber: "5525278453",
        email: "farukbiberoglu34@gmail.com",
      ),
      team: Team.FlutterDevelopment,
    ),
    NeonAcademyMember(
      fullName: 'Anıl Sorgit',
      title: 'A2 Level Flutter Developer',
      horoscope: Horoscope.Leo,
      memberLevel: MemberLevel.Intermediate,
      homeTown: 'Adana',
      age: 24,
      contactInformation: ContactInformation(
        phoneNumber: "5376489963",
        email: 'anilSorgir@gmail.com',
      ),
      team: Team.AndroidDevelopment,
    ),
    NeonAcademyMember(
      fullName: "Mehmet Ersoy",
      title: "A2 Level Flutter Developer",
      horoscope: Horoscope.Gemini,
      memberLevel: MemberLevel.Intermediate,
      homeTown: "Bursa",
      age: 26,
      contactInformation: ContactInformation(
        phoneNumber: "5558978453",
        email: "mehmetGürsoy@gmail.com",
      ),
      team: Team.IOSDevelopment,
    ),
    NeonAcademyMember(
      fullName: "Ahmet Köse",
      title: "A2 Level Flutter Developer",
      horoscope: Horoscope.Aries,
      memberLevel: MemberLevel.Beginner,
      homeTown: "İzmir",
      age: 30,
      contactInformation: ContactInformation(
        phoneNumber: "5558788446",
        email: "ahmetköse@gmail.com",
      ),
      team: Team.UIUXDesign,
    ),
  ];

  List<NeonAcademyMember> flutterTeamMembers = members
      .where((member) => member.team == Team.FlutterDevelopment)
      .toList();

  print("Flutter Development Team üyeleri:");
  for (var member in flutterTeamMembers) {
    print(member.fullName);}

  print('*************************');

  Map<Team, int> teamMemberCount = {};

  for (var member in members) {
    teamMemberCount[member.team] = (teamMemberCount[member.team] ?? 0) + 1;
  }

  print("UI/UX Design Team üye sayısı: ${teamMemberCount[Team.UIUXDesign]}");
  print('*************************');

  printTeamMembers(members, Team.FlutterDevelopment);
  printTeamMembers(members, Team.UIUXDesign);
  printTeamMembers(members, Team.IOSDevelopment);
  printTeamMembers(members, Team.AndroidDevelopment);

  print('*************************');
  for (var member in members) {
    describeMember(member);
  }
  print('*************************');

  filterMembersByAgeAndTeam(24, Team.FlutterDevelopment, members);
  print('*************************');

  for (var member in members) {
    promoteMember(member);
    print("${member.fullName} has been promoted to: ${member.title}");
  }
  print('*********************');

  double flutterAverageAge = calculateAverageAge(Team.FlutterDevelopment, members);
  print("Average age in Flutter Development Team: $flutterAverageAge");

  double iosAverageAge = calculateAverageAge(Team.IOSDevelopment, members);
  print("Average age in IOS Development Team: $iosAverageAge");

  double uiUxDesign = calculateAverageAge( Team.UIUXDesign, members);
  print('Avarage age in Flutter Development Team : $uiUxDesign');

  double  androidDeveloper = calculateAverageAge ( Team.AndroidDevelopment,members);
  print('Average age in Android Development Team : $androidDeveloper');

  print('**********');
  for (var member in members) {
    describeMember(member);
  }

  print('*************************');

  List<ContactInformation> flutterDevContactInfo = getContactInfoForTeam(Team.FlutterDevelopment, members);

  for (var contactInfo in flutterDevContactInfo) {
    print('Phone: ${contactInfo.phoneNumber}, Email: ${contactInfo.email}');
  }

  print('*****************************');
  for (var member in members) {
    describeMemberBasedOnAge(member);
  }
}
