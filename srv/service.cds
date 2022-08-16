using {sap.playground.bookshop as model} from '../db/model';

service MyService {

    entity Services        as projection on model.Services;
    entity Topics          as projection on model.Topics;
    entity Services_Topics as projection on model.Services_Topics;

}
