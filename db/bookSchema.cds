using {
    Currency,
    managed,
    sap
} from '@sap/cds/common';
namespace sap.capire.bookshop;

entity Safety : managed {
    key ID       : Integer;
        title    : localized String(111)  @mandatory;
        descr    : localized String(1111); 
        stock    : Integer;
        price    : Decimal;
        currency : Currency;
        image    : LargeBinary            @Core.MediaType: 'image/png';
}
 