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

public class ReservedController extends HttpServlet {

    private static final String VIEW_TEMPLATE_PATH = "/WEB-INF/jsp/reserved.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String startDate = "";
        String endDate = "";
        String servicePackage = "";

        Account account = AccountResolver.INSTANCE.getAccount(req);
        if (account != null) {
            CustomData data = account.getCustomData();
            startDate = (String)data.get("startDate");
            endDate = (String)data.get("endDate");
            servicePackage = (String)data.get("servicePackage");
        }

        req.setAttribute("startDate", startDate);
        req.setAttribute("endDate", endDate);
        req.setAttribute("servicePackage", servicePackage);
        req.getRequestDispatcher(VIEW_TEMPLATE_PATH).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String endDate = req.getParameter("endDate");
        String startDate = req.getParameter("startDate");
        String servicePackage = req.getParameter("servicePackage");

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

            if (Strings.hasText(servicePackage)) {
                data.put("servicePackage", servicePackage);
            } else {
                data.remove("servicePackage");
            }

            data.save();
        }

        req.setAttribute("endDate", endDate);
        req.setAttribute("startDate", startDate);
        req.setAttribute("servicePackage", servicePackage);
        req.getRequestDispatcher(VIEW_TEMPLATE_PATH).forward(req, resp);
    }
}