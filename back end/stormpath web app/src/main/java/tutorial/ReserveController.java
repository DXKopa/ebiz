package tutorial;

import com.stormpath.sdk.account.Account;
import com.stormpath.sdk.directory.CustomData;
import com.stormpath.sdk.lang.Strings;
import com.stormpath.sdk.servlet.account.AccountResolver;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ReserveController extends HttpServlet {

    private static final String VIEW_TEMPLATE_PATH = "/WEB-INF/jsp/reserve.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String startDate = "";
        String endDate = "";

        Account account = AccountResolver.INSTANCE.getAccount(req);
        if (account != null) {
            CustomData data = account.getCustomData();
            startDate = (String)data.get("startDate");
           	endDate = (String)data.get("endDate");
        }

        req.setAttribute("startDate", startDate);
        req.setAttribute("endDate", endDate);
        req.getRequestDispatcher(VIEW_TEMPLATE_PATH).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String endDate = req.getParameter("endDate");
        String startDate = req.getParameter("startDate");

        //get the currently-logged-in account:
        Account account = AccountResolver.INSTANCE.getAccount(req);
        if (account != null) {

            CustomData data = account.getCustomData();

            if (Strings.hasText(endDate)) {
                data.put("endDate", endDate);
            } else {
                data.remove("endDate");
            }

            if (Strings.hasText(startDate)) {
                data.put("startDate", startDate);
            } else {
                data.remove("startDate");
            }

            data.save();
        }

        req.setAttribute("endDate", endDate);
        req.setAttribute("startDate", startDate);
        req.getRequestDispatcher(VIEW_TEMPLATE_PATH).forward(req, resp);
    }
}