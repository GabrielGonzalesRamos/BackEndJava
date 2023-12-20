import java.awt.geom.Area;
import java.util.Scanner;
import static java.lang.Math.PI;


public class EjerciciosLunes {
    public static void main(String[] args) {
        String resultadoAreaCirculo = AreaCirculo();
        System.out.println(resultadoAreaCirculo);

        System.out.println("---------");

        String resultadoConvertidorFahrenheit = ConversionTemperatura();
        System.out.println(resultadoConvertidorFahrenheit);

        System.out.println("---------");

        String resultadoVolumenEsfera = VolumenEsfera();
        System.out.println(resultadoVolumenEsfera);

        System.out.println("---------");

    }

    public static String AreaCirculo(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Calculando el área de un círculo");
        System.out.print("Ingrese el radio del círculo: ");
        try {
            float area = sc.nextFloat();
            return "El área del círculo es: " + area * area * PI;
        }
        catch ( Exception e ) {
            return  "Debe de ingresar un número";
        }
    }

    public static String ConversionTemperatura(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Convirtiendo de grados Celsius a Fahrenheit");
        System.out.print("Ingrese los grados Celsius a convertir : ");
        try {
            float celsius = sc.nextFloat();
            return celsius + " grandos Celsius a Fahrenheit es: " + ((9/5 * celsius) + 32);
        }
        catch (Exception e) {
            return  "Debe de ingresar un número";
        }
    }

    public static String VolumenEsfera(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Calculando el volumen de una esfera");
        System.out.print("Ingrese el radio de la esfera: ");
        try {
            float radio = sc.nextFloat();
            return "El volumen de la esfera es : " + 4/3 * PI * radio * radio * radio;
        }
        catch (Exception e) {
            return  "Debe de ingresar un número";
        }
    }
}
