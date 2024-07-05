using {hse as rm} from '../db/schema';

service OrgsService  {  
    entity Orgs           as projection on rm.Orgs;
    annotate Orgs with @odata.draft.enabled; 
}
