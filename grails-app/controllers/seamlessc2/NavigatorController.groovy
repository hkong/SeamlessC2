package seamlessc2

import groovy.json.JsonSlurper

class NavigatorController
{
    def index()
    {
        String dashboardsJson = ""
        ArrayList dashboards = new ArrayList()

        URL url = new URL( "http://localhost:8081/SeamlessC2/test-files/owf/dashboards.json" );
        InputStream urlStream = null;
        try
        {
            urlStream = url.openStream();
            BufferedReader reader = new BufferedReader( new InputStreamReader( urlStream ) );
            JsonSlurper jsonSlurper = new JsonSlurper();
            Object result = jsonSlurper.parse( reader );
            dashboardsJson = result.toString()

            // this code from MrHaki would be much more usable, but unfortunately, it crashes on the layoutConfig tag
//            Map jsonResult = (Map) result;
//            Map user = (Map) jsonResult.get( "data" );
//            String name = (String) user.get( "name" );

            println "result=${result.data[1].name}"

            def dashboard = [:]
            result.data.each  {
                println "${it.stack?'stacked-dashboard':'dashboard'}:  ${it.name} -> #${it.guid}"
                dashboard.name = it.name
                dashboard.type = ( ( it.stack )? 'stacked-dashboard' : 'dashboard' )
                dashboard.stack = it.stack?.name
                dashboard.guid = it.guid
                dashboard.url = "https://localhost:8443/owf/#${it.guid}"
                dashboards += dashboard.clone()
            }
            println dashboardsJson
            println dashboards
            [dashboardsJson:dashboardsJson,dashboards:dashboards]
        }
        finally
        {
            if ( urlStream != null )
            {
                urlStream.close();
            }
        }

    }
}
