using {
    cuid,
    managed,
    User
} from '@sap/cds/common';

namespace hse;


entity SafetyActivity : cuid, managed {
    activityTheme : String(100) @mandatory;
    org           : Association to Orgs;
    dept          : Association to Depts;
    team          : Association to Teams;
    emcee         : User;
//    activityStartTime:DateTime;
//    activityEndTime:DateTime;
//    statusId:Association to  status;
//   createdAt:DateTime;
}

entity Orgs : cuid, managed {
    orgName        : String(111);
    desc:String(200);
    code:String(100);
    shortName:String(100);
    safetyActivity : Association to many SafetyActivity
                         on safetyActivity.org = $self;
}

entity Depts : cuid, managed {
    deptName       : String(111);
    safetyActivity : Association to many SafetyActivity
                         on safetyActivity.dept = $self;
}

entity Teams : cuid, managed {
    teamName       : String(111);
    safetyActivity : Association to many SafetyActivity
                         on safetyActivity.team = $self;
}

// entity user: cuid,managed {
//     key ID             : Integer;
//         userName       : String(111) @mandatory;
//         safetyActivity : Association to many SafetyActivity
//                              on safetyActivity.emceeId = $self ;
// }

// entity status:cuid,managed {
//     key ID             : String(4);
//         statusName       : String(111) @mandatory;
//         safetyActivity : Association to many SafetyActivity
//                              on safetyActivity.statusId = $self;
// }
