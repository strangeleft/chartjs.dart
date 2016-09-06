import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'linear_charts_component.dart';

@Component(
    selector: 'angular-chartjs',
    templateUrl: 'app_component.html',
    styleUrls:  const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES]
)
@RouteConfig(const [
    const Route(
        path: '/linear',
        name: 'Linear',
        component: LinearChartsComponent,
        useAsDefault: true
    )
])
class AppComponent {}
