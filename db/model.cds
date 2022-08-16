using {cuid} from '@sap/cds/common';

namespace sap.playground.bookshop;

entity Services : cuid {
    customers : String;
    topics    : Composition of many Services_Topics
                    on topics.service = $self;
}


entity Topics : cuid {
    name : String;
}


entity Services_Topics {
    service : Association to Services;
    topic   : Association to Topics
}
