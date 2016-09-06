import 'dart:html';
import 'dart:math' as math;
import 'package:angular2/core.dart';

import 'package:chartjs/chartjs.dart';

@Component(
    selector: 'linear-charts',
    templateUrl: 'linear_charts_component.html',
    styleUrls:  const ['linear_charts_component.css'],
)
class LinearChartsComponent implements OnInit {
    CanvasRenderingContext2D basic_ctx;


    ngOnInit() {
        basic_ctx = (querySelector("#basic") as CanvasElement).context2D;
        plot();
    }

    void plot_basic() {
        //Chart.defaults.global.responsive = true;

        var rnd = new math.Random();
        var months = <String>["January", "February", "March", "April", "May", "June"];

        var data = new LinearChartData(labels: months, datasets: <ChartDataSet>[
            new ChartDataSet(
                label: "My First dataset",
                fillColor: "rgba(220,220,220,0.2)",
                strokeColor: "rgba(220,220,220,1)",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(220,220,220,1)",
                data: months.map((_) => rnd.nextInt(100)).toList()),
            new ChartDataSet(
                label: "My Second dataset",
                fillColor: "rgba(151,187,205,0.2)",
                strokeColor: "rgba(151,187,205,1)",
                pointColor: "rgba(151,187,205,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,187,205,1)",
                data: months.map((_) => rnd.nextInt(100)).toList())
        ]);

        new Chart(basic_ctx).Line(data, new LineChartOptions(pointDotRadius: 10));
    }

    void plot() {
        plot_basic();
    }
}
