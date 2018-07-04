package jun.tour.go.Service;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;



public class AirplaneParsing {
	 public static void main(String[] args) throws IOException {
	        StringBuilder urlBuilder = new StringBuilder("http://openapi.tago.go.kr/openapi/service/DmstcFlightNvgInfoService/getAirmanList"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=agzBYd3hHqfkmkq4pAux9zj6AZT0LWinXK5QEFNk54pnE6lkvD1da86dHFc1PLoWUlmBLIQLW99Ns2phhtvnng%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("records","UTF-8") + "=" + URLEncoder.encode("fields", "UTF-8")); /*파라미터설명*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	        System.out.println(sb.toString());
	    }
	}