
package predictor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/predictor") // <- esto es lo importante
public class PredictorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        double asistencia = Double.parseDouble(request.getParameter("asistencia"));
        double parcial = Double.parseDouble(request.getParameter("parcial"));
        double tarea = Double.parseDouble(request.getParameter("tarea"));

        double resultado = Modelo.predecir(asistencia, parcial, tarea);

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write("<h2>Nota final estimada: " + resultado + "</h2>");
    }
}
