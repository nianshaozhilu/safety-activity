using SafetyActivityService as service from '../../srv/safetyActivity-service';

annotate service.SafetyActivity with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : org.orgName,
            Label : '{i18n>Orgname}',
        },
        {
            $Type : 'UI.DataField',
            Value : activityTheme,
            Label : '{i18n>Activitytheme}',
        },
        {
            $Type : 'UI.DataField',
            Value : dept.deptName,
            Label : '{i18n>Deptname}',
        },
        {
            $Type : 'UI.DataField',
            Value : team.teamName,
            Label : '{i18n>Teamname}',
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
    ]
);

annotate service.SafetyActivity with @(
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Baseinfo}',
            ID : 'baseInfo',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>SafetyActivityDetail}',
                    ID : 'SafetyActivityDetail',
                    Target : '@UI.FieldGroup#SafetyActivityDetail',
                },],
        },],
    UI.FieldGroup #baseInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : org.orgName,
                Label : '{i18n>Orgname}',
            },
            {
                $Type : 'UI.DataField',
                Value : dept.deptName,
                Label : '{i18n>Deptname}',
            },
            {
                $Type : 'UI.DataField',
                Value : team.teamName,
                Label : '{i18n>Teamname}',
            },
            {
                $Type : 'UI.DataField',
                Value : activityTheme,
                Label : '{i18n>Activitytheme}',
            },],
    }
);
annotate service.Orgs with {
    orgName @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Orgs',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : orgName,
                    ValueListProperty : 'orgName',
                },
            ],
            Label : '{i18n>Orgname}',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Depts with {
    deptName @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Depts',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : deptName,
                    ValueListProperty : 'deptName',
                },
            ],
            Label : '{i18n>Deptname}',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Teams with {
    teamName @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Teams',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : teamName,
                    ValueListProperty : 'teamName',
                },
            ],
            Label : '{i18n>Teamname}',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.SafetyActivity with @(
    UI.FieldGroup #SafetyActivityDetail : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : activityTheme,
                Label : '{i18n>Activitytheme}',
            },{
                $Type : 'UI.DataField',
                Value : org_ID,
                Label : '{i18n>Orgname}',
            },{
                $Type : 'UI.DataField',
                Value : dept_ID,
                Label : '{i18n>Deptname}',
            },{
                $Type : 'UI.DataField',
                Value : team_ID,
                Label : '{i18n>Teamname}',
            },],
    }
);

annotate service.SafetyActivity with {
    org @Common.Text : {
            $value : org.orgName,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.SafetyActivity with {
    org @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Orgs',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : org_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : '{i18n>Orgname}',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Orgs with {
    ID @Common.Text : orgName
};
annotate service.SafetyActivity with {
    dept @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Depts',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : dept_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : '{i18n>Deptname}',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.SafetyActivity with {
    dept @Common.Text : {
            $value : dept.deptName,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.SafetyActivity with {
    team @Common.Text : {
            $value : team.teamName,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.SafetyActivity with {
    team @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Teams',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : team_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : '{i18n>Teamname}',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Teams with {
    ID @Common.Text : teamName
};
annotate service.Depts with {
    ID @Common.Text : deptName
};
annotate service.SafetyActivity with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : activityTheme,
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
