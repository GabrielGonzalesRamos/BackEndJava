
//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        int vidas = 3;
        char valor = 'a';
        String nombre = "Gabriel";

        System.out.println(vidas);
        System.out.println(valor);
        System.out.println(nombre);

        short x = 32767;
        int y = 2147483647;

        float alturaM = 1.7f;
        double factor = 0.232323232;

        String nombreAlumno = "Gabriel";
        String apellidoAlumno = "Gonzales";
        byte edadAlumno = 24;
        String cuidadAlumno = "Callao";
        float alturaAlumno = 1.65f;
        System.out.println("Mi nombre es: " + nombreAlumno + " Mi apellido es: " + apellidoAlumno + " Mido " + alturaAlumno + " cm " + " Tengo " + edadAlumno + " años " + " Vivo en la ciudad de " + cuidadAlumno);

        int num1 = 10;
        int num2 = 20;

        int resultado = num1 + num2;
        System.out.println("El resultado es: " + resultado);

        num1 =+ 5;
        num1 = 56;
        System.out.println(num1);

        String str1 = "Hola";
        String str2 = "Mundo";
        String  result = str1 + " " + str2;
        System.out.println(result);

        final float PI = 3.14f;

        num1 = 10;
        num2 = 4;
        float resultadoDiv = (float) num1 / num2;
        System.out.println("División: " + resultadoDiv);

        // Operador Módulo
        float base = 10.4f;
        float altura = 4.2f;
        float AreaRectangulo = base * altura;
        System.out.println("El area del rectángulo es: " + AreaRectangulo);
    }
}
