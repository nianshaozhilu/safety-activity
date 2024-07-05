using OrgsService as service from '../../srv/orgs-service';
annotate service.Orgs with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Orgname}',
                Value : orgName,
            },
            {
                $Type : 'UI.DataField',
                Value : code,
                Label : '{i18n>Code}',
            },
            {
                $Type : 'UI.DataField',
                Value : shortName,
                Label : '{i18n>Shortname}',
            },
            {
                $Type : 'UI.DataField',
                Value : desc,
                Label : '{i18n>Desc}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : code,
            Label : '{i18n>Code}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Orgname}',
            Value : orgName,
        },
        {
            $Type : 'UI.DataField',
            Value : shortName,
            Label : '{i18n>Shortname}',
        },
        {
            $Type : 'UI.DataField',
            Value : desc,
            Label : '{i18n>Desc}',
        },
    ],
);

annotate service.Orgs with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : orgName,
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
