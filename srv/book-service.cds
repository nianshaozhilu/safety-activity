 

using {sap.capire.bookshop as my} from '../db/bookSchema';

service AdminService @(requires: 'authenticated-user') {
    entity Safety   as projection on my.Safety; 
}
