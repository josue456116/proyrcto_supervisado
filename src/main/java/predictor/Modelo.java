package predictor;



import weka.core.Instance;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;
import weka.classifiers.Classifier;
import weka.classifiers.functions.LinearRegression;

public class Modelo {
    private static Classifier modelo;

    static {
        try {
            // Carga el archivo ARFF
            DataSource source = new DataSource("src/main/resources/datos/notas.arff");
            Instances data = source.getDataSet();

            // Define qué atributo es el objetivo (la última columna)
            if (data.classIndex() == -1)
                data.setClassIndex(data.numAttributes() - 1);

            // Entrena el modelo
            modelo = new LinearRegression();
            modelo.buildClassifier(data);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static double predecir(double asistencia, double parcial, double tarea) {
        try {
            // Crear nueva instancia con los atributos de entrada
            Instances structure = new DataSource("src/main/resources/datos/notas.arff").getStructure();
            structure.setClassIndex(structure.numAttributes() - 1);

            Instance nueva = new weka.core.DenseInstance(structure.numAttributes());
            nueva.setDataset(structure);
            nueva.setValue(0, asistencia);
            nueva.setValue(1, parcial);
            nueva.setValue(2, tarea);

            return modelo.classifyInstance(nueva);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}