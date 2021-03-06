/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConsultaConexion;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author javier
 */
public class ConsultaBD {
 
    public static boolean retiroDeDinero(int cant,int codUsu){
        boolean res=false;
        int almacenaMontoActual=obtenerMontoActual(codUsu);
        try{
            Statement sql = ConexionSQL.getConnetion().createStatement();
            
           
           String consulta =
                            "begin TRANSACTION retiroDeDinero \n" +
                                "\n" +
                            "    DECLARE @saldo int=0  \n"+
                            "    SELECT  @saldo = montoTotal \n" +
                            "    FROM Banco.dbo.Cuenta \n" +
                            "    WHERE codUsu="+ codUsu + " \n" +
                            "    \n" +
                            "    IF (@saldo<"+ cant +") \n" +
                            "        BEGIN \n" +
                            "            rollback; \n" +
                            "        END \n" +
                            "        \n" +
                            "    else \n" +
                            "        BEGIN \n" +
                            "            UPDATE Banco.dbo.Cuenta SET montoTotal= montoTotal -"+ cant +" \n" +
                            "            COMMIT; \n" +
                            "        END \n ";
            sql.executeQuery(consulta);
           
        }catch(SQLException e){
            try{    
                if(realizado(codUsu,almacenaMontoActual)){
                        res=true;
                    }
            }catch(Exception ex){
                System.out.println(ex.toString());
            }
        }
        
        return res;
    }
    
    private  static boolean realizado(int codUsu,int actual) {
       boolean res=false;
       try{
           int resulCon=0;
           Statement sql = ConexionSQL.getConnetion().createStatement();
           
           String consulta = " SELECT montoTotal "
                            +" FROM Banco.dbo.Cuenta"
                            +" WHERE  codUsu="+ codUsu;
           
           ResultSet resultado = sql.executeQuery(consulta);
           if(resultado.next()){
               resulCon=resultado.getInt(1);
               if(resulCon==actual){
                   res=false;
               }else{
                   res=true;
               }
           }
            
       }catch(SQLException e){
           System.out.print(e.toString());
       }
       
       
       return res; 
    }
    
    public static int obtenerMontoActual(int codUsu) {
       int res=0;
        try{
           Statement sql = ConexionSQL.getConnetion().createStatement();
           
           String consulta = " SELECT montoTotal "
                            +" FROM Banco.dbo.Cuenta"
                            +" WHERE  codUsu="+ codUsu;
           
           ResultSet resultado = sql.executeQuery(consulta);
           if(resultado.next()){
               res=resultado.getInt(1);
           }
            
       }catch(SQLException e){
           System.out.print(e.toString());
       }
       
       return res;
    }
    
    public static boolean validadUsuarioContrasenia(int codUsuario,String contrUsu){
        boolean res=false;
        try{
            Statement sql = ConexionSQL.getConnetion().createStatement();
           
           String consulta = " SELECT * "
                            +" FROM Banco.dbo.usuario"
                            +" WHERE  codUsu="+ codUsuario +" and  contraUs='"+ contrUsu+"'";
           
           ResultSet resultado = sql.executeQuery(consulta);
           if(resultado.next()){
               res=true;
           }
            
        }catch(SQLException e ){
            System.out.print(e.toString());
        
        }
       
       return res;     
    }
    
    public static void agregarAlRecibo(int codUsu,String fecha,String nombUs,
            String apPat,String apMat,int montoRetirado,int montoActual){
        
        try{
             Statement sql = ConexionSQL.getConnetion().createStatement();
           
           String consulta = "insert into Banco.dbo.Recibo([codUsu],[fechAct],[nombUs],"
                        + "[apPat],[apMat],[montoRetirado],[montoAct])\n" +
                           " values ("+ codUsu +",'" + fecha +"','"+ nombUs +"',"
                            + "'"+apPat +"','"+apMat +"',"+montoRetirado +","+montoActual +")";
          sql.executeQuery(consulta);
             
        }catch(SQLException e){
            System.out.print(e.toString());
        }
        
    }
    
    public static ArrayList<String> transacciones(int codUsuario){
        ArrayList<String> res = new ArrayList<>();
        try{
            Statement sql = ConexionSQL.getConnetion().createStatement();
           
           String consulta = " SELECT fechAct,montoRetirado,montoAct "
                            +" FROM Banco.dbo.Recibo"
                            +" WHERE  codUsu="+ codUsuario ;
           
           ResultSet resultado = sql.executeQuery(consulta);
           while(resultado.next()){
               res.add("Fecha: "+resultado.getString(1)
                       +"| Monto Retirado: "+resultado.getInt(2)
                       +"| Saldo Resultado: "+resultado.getInt(3));
           }
            
        }catch(SQLException e ){
            System.out.print(e.toString());
        
        }
        return res;
    }
    
    public static String [] reciboShow(int codUsu){
        String res []=new String [4];
        try{
            Statement sql= ConexionSQL.getConnetion().createStatement();
            String consulta="SELECT codUsu,nombUs,apPat,apMat "
                            + " FROM Banco.dbo.Usuario "
                            + " WHERE codUsu="+ codUsu +"";
            ResultSet respuesta=sql.executeQuery(consulta);
            if (respuesta.next()){
                res[0]=respuesta.getString(1);
                res[1]=respuesta.getString(2);
                res[2]=respuesta.getString(3);
                res[3]=respuesta.getString(4);
                System.out.print(res[0]+","+res[1]+","+res[2]+","+res[3]);
            }
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        
        return res;
    }
    
}
