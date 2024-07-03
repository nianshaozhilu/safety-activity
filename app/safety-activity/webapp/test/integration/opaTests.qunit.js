sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'safetyactivity/safetyactivity/test/integration/FirstJourney',
		'safetyactivity/safetyactivity/test/integration/pages/SafetyActivityList',
		'safetyactivity/safetyactivity/test/integration/pages/SafetyActivityObjectPage'
    ],
    function(JourneyRunner, opaJourney, SafetyActivityList, SafetyActivityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('safetyactivity/safetyactivity') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSafetyActivityList: SafetyActivityList,
					onTheSafetyActivityObjectPage: SafetyActivityObjectPage
                }
            },
            opaJourney.run
        );
    }
);