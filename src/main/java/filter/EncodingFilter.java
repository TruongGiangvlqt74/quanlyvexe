package filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;

@WebFilter(
        urlPatterns = "/*",
        filterName = "encoding-filter"     
)
public class EncodingFilter implements Filter{

	public EncodingFilter()  {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	  public void init(FilterConfig fConfig) throws ServletException {

	  }

	  @Override
	  public void destroy() {

	  }
	  
	  @Override
	  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	          throws IOException, ServletException {
	      request.setCharacterEncoding("UTF-8");

	      chain.doFilter(request, response);
	  }

}
