import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LaptopList")
public class LaptopList extends HttpServlet
{
	/* Laptop Page Displays all the Laptop and their Information in BESTDeal */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String name = null;
		String CategoryName = request.getParameter("maker");
		
		HashMap<String, Laptop> allLaptops = new HashMap<String, Laptop>();
		HashMap<String, Laptop> hm = new HashMap<String, Laptop>();

		try
		{
			allLaptops = MySqlDataStoreUtilities.getLaptops();
		}
		catch(Exception e)
		{

		}

		if(CategoryName==null)
		{
			hm.putAll(allLaptops);
			//hm.putAll(SaxParserDataStore.laptops);
			name = "";
		}
		else
		{
			if(CategoryName.equals("microsoft"))
			{
				//for(Map.Entry<String,Laptop> entry : SaxParserDataStore.laptops.entrySet())
				for(Map.Entry<String,Laptop> entry : allLaptops.entrySet())
				{
					if(entry.getValue().getRetailer().equals("Microsoft"))
					{
						hm.put(entry.getValue().getId(),entry.getValue());
					}
				}
				name = "Microsoft";
			}
			else if(CategoryName.equals("sony"))
			{
				for(Map.Entry<String,Laptop> entry : allLaptops.entrySet())
				{
					if(entry.getValue().getRetailer().equals("Sony"))
					{
						hm.put(entry.getValue().getId(),entry.getValue());
					}
				}
				name = "Sony";
			}
			else if(CategoryName.equals("lg"))
			{
				for(Map.Entry<String,Laptop> entry : allLaptops.entrySet())
				{
					if(entry.getValue().getRetailer().equals("LG"))
					{
						hm.put(entry.getValue().getId(),entry.getValue());
					}
				}
				name = "LG";
			}
			else if(CategoryName.equals("samsung"))
			{
				for(Map.Entry<String,Laptop> entry : allLaptops.entrySet())
				{
					if(entry.getValue().getRetailer().equals("Samsung"))
					{
						hm.put(entry.getValue().getId(),entry.getValue());
					}
				}
				name = "Samsung";
			}
			else if(CategoryName.equals("onida"))
			{
				for(Map.Entry<String,Laptop> entry : allLaptops.entrySet())
				{
					if(entry.getValue().getRetailer().equals("Onida"))
					{
						hm.put(entry.getValue().getId(),entry.getValue());
					}
				}
				name = "Onida";
			}
		}
		
		/* Header, Left Navigation Bar are Printed.

		All the Laptop and Laptop information are dispalyed in the Content Section

		and then Footer is Printed*/

		Utilities utility = new Utilities(request,pw);
		utility.printHtml("Header.html");
		utility.printHtml("LeftNavigationBar.html");
		pw.print("<div id='content'><div class='post'><h2 class='title meta'>");
		pw.print("<a style='font-size: 24px;'>"+name+" laptops</a>");
		pw.print("</h2><div class='entry'><table id='bestseller'>");
		int i = 1; int size= hm.size();
		for(Map.Entry<String, Laptop> entry : hm.entrySet())
		{
			Laptop laptop = entry.getValue();
			if(i%3==1) pw.print("<tr>");
			pw.print("<td><div id='shop_item'>");
			pw.print("<h3>"+laptop.getName()+"</h3>");
			pw.print("<strong>$"+laptop.getPrice()+"</strong><ul>");
			pw.print("<li id='item'><img src='images/laptops/"+laptop.getImage()+"' alt='' /></li>");
			
			pw.print("<li><form method='post' action='Cart'>" +
					"<input type='hidden' name='name' value='"+entry.getKey()+"'>"+
					"<input type='hidden' name='type' value='laptops'>"+
					"<input type='hidden' name='maker' value='"+CategoryName+"'>"+
					"<input type='hidden' name='access' value=''>"+
					"<input type='submit' class='btnbuy' value='Buy Now'></form></li>");
			pw.print("<li><form method='post' action='WriteReview'>"+"<input type='hidden' name='name' value='"+entry.getKey()+"'>"+
					"<input type='hidden' name='type' value='laptops'>"+
					"<input type='hidden' name='maker' value='"+CategoryName+"'>"+
					"<input type='hidden' name='access' value=''>"+
					"<input type='hidden' name='price' value='"+laptop.getPrice()+"'>"+
				    "<input type='submit' value='WriteReview' class='btnreview'></form></li>");
			pw.print("<li><form method='post' action='ViewReview'>"+"<input type='hidden' name='name' value='"+entry.getKey()+"'>"+
					"<input type='hidden' name='type' value='laptops'>"+
					"<input type='hidden' name='maker' value='"+CategoryName+"'>"+
					"<input type='hidden' name='access' value=''>"+
				    "<input type='submit' value='ViewReview' class='btnreview'></form></li>");
			pw.print("</ul></div></td>");
			if(i%3==0 || i == size) pw.print("</tr>");
			i++;
		}	
		pw.print("</table></div></div></div>");
   
		utility.printHtml("Footer.html");
	}
}