package jun.tour.go.Service.Chart;

import java.awt.Color;
import java.awt.Font;
import java.util.List;

import javax.inject.Inject;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.stereotype.Service;
import jun.tour.go.Model.Cart.DAO.CartDAO;
import jun.tour.go.Model.Cart.DTO.CartDTO;

@Service
public class ChartServiceImpl implements ChartService {

	@Inject
	CartDAO cartDao;

	@Override
	public JFreeChart createChart() {
		List<CartDTO> list=cartDao.cartMoney();
		DefaultCategoryDataset dataset=
				new DefaultCategoryDataset();
		for(CartDTO dto:list) {
			dataset.setValue(dto.getMoney(), "도시", dto.getP_city());
		}
		JFreeChart chart=null;
		String title="예약 통계";
		try {
			//차트 (제목,x축,y축,데이터셋,그래프방향,범례,툴팁,url))
			chart=ChartFactory.createBarChart(title,"상품명", 
					"금액", dataset,PlotOrientation.VERTICAL,true,true,false);
			chart.getTitle().setFont(new Font("돋움",Font.BOLD, 15));
			chart.getLegend().setItemFont(
					new Font("돋움",Font.PLAIN,10));
			Font font=new Font("돋움",Font.PLAIN,12);
			Color color=new Color(0,0,0);
			StandardChartTheme chartTheme=
							(StandardChartTheme) StandardChartTheme.createJFreeTheme();
				chartTheme.setExtraLargeFont(font);
				chartTheme.setLargeFont(font);
				chartTheme.setRegularFont(font);
				chartTheme.setSmallFont(font);
				chartTheme.setAxisLabelPaint(color);
				chartTheme.setLegendItemPaint(color);
				chartTheme.setItemLabelPaint(color);
				chartTheme.apply(chart);
		}catch(Exception e){
			e.printStackTrace();
		}
		return chart;
	}
	
	

}
