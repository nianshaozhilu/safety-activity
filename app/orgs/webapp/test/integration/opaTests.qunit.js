sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'orgs/test/integration/FirstJourney',
		'orgs/test/integration/pages/OrgsList',
		'orgs/test/integration/pages/OrgsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrgsList, OrgsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('orgs') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrgsList: OrgsList,
					onTheOrgsObjectPage: OrgsObjectPage
                }
            },
            opaJourney.run
        );
    }
);