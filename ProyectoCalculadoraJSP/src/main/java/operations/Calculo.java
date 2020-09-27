package operations;

/**
 * @author JeffMenca
 */
public class Calculo {
    //Atributos
    private int numero1 = 0;
    private int numero2 = 0;
    //Constructor
    public Calculo(int numero1, int numero2) {
        this.numero1 = numero1;
        this.numero2 = numero2;
    }
    //Metodos
    //Suma
    public int getSuma(){
        return numero1 + numero2;
    }
    //Multiplicacion
    public int getMultiplicacion(){
 return numero1 * numero2;
    }
    //Mayor
    public int getMayor(){
        if(numero1>numero2){
            return numero1;
        }else{
            return numero2;
        }
    }
    //Potencia
    public double getPotencia(){
        return Math.pow(numero1, numero2);
    }
    //Numero Binario
    public String getBinario1(){
        String binario="";
        if(numero1>0){
            while(numero1>0){
                   if(numero1%2==0){
                       binario = "0"+binario;
                   }else{
                       binario = "1"+binario;
                   }
                  numero1 =  numero1/2;  
            }
            return binario;
        }else{
            System.out.println("El numero que ingreso no es valido");
            return "Error";
        }
        
    }
    //Numero binario 2
    public String getBinario2(){
        String binario="";
        if(numero2>0){
            while(numero2 >0){
                   if(numero2%2==0){
                       binario = "0"+binario;
                   }else{
                       binario = "1"+binario;
                   }
                  numero2 = numero2/2;  
            }
            return binario;
        }else{
            System.out.println("El numero que ingreso no es valido");
            return "Error";
        }
        
    }
}
