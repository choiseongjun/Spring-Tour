package jun.tour.go.Controller.Chart;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Service.Chart.ChartService;

@RestController//리프리젠테티브 스테이트 트랜스퍼 스프링4.0이상지원

public class ChartController {

	@Inject
	ChartService chartService;
	
	@RequestMapping("chart0.do")
	public ModelAndView chart(HttpServletResponse response) {
		try {
			JFreeChart chart=chartService.createChart();
			ChartUtilities.writeChartAsPNG(
					response.getOutputStream(), chart,1200, 450);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return new ModelAndView("Chart/jfree");
	}
	
	@RequestMapping("chart1.do")//항공운항정보api로 바꿈
	public ModelAndView char1() {
		return new ModelAndView("Schedule/Plan");
	}

}
