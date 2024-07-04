using {hse as rm} from '../db/schema';

service SafetyActivityService @(requires: 'authenticated-user') {
    entity SafetyActivity @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'SafetyViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'SafetyManager' ]
            }
      ]) as projection on rm.SafetyActivity;
    annotate SafetyActivity with @odata.draft.enabled;
    entity Orgs           as projection on rm.Orgs;
    annotate Orgs with @odata.draft.bypass;
    entity Depts          as projection on rm.Depts;
    annotate Depts with @odata.draft.enabled;
    entity Teams          as projection on rm.Teams;
    annotate Teams with @odata.draft.enabled;
}
