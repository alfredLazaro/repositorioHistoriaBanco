/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConsultaConexion;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author javier
 */
public class ConsultaBD {
 
    public static void retiroDeDinero(int cant,int codSis){
        try{
            Statement sql = ConexionSQL.getConnetion().createStatement();
           
           String consulta = "begin TRANSACTION retiroDeDinero \n" +
                                "\n" +
                            "    DECLARE @saldo int  \n"+ 
                                "    SELECT  @saldo = pago \n" +
                            "    FROM Umss.dbo.Inscripciones \n" +
                            "    WHERE codSis="+ codSis + " \n" +
                            "    \n" +
                            "    IF (@saldo<"+ cant +") \n" +
                            "        BEGIN \n" +
                            "            rollback; \n" +
                            "        END \n" +
                            "        \n" +
                            "    else \n" +
                            "        BEGIN \n" +
                            "            UPDATE Umss.dbo.Inscripciones SET pago= pago -"+ cant +" \n" +
                            "            COMMIT; \n" +
                            "        END \n ";
                            
           
           ResultSet resultado = sql.executeQuery(consulta);
           if(resultado.next()){
               System.out.print(resultado.toString());
           }
           
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        
        
    }
    
    public boolean validadUsuarioContrasenia(int codUsuario,String contrUsu){
        boolean res=false;
        try{
            Statement sql = ConexionSQL.getConnetion().createStatement();
           
           String consulta = " SELECT * "
                            +" FROM usuario"
                            +" WHERE  codUsuario="+codUsuario +" and  contraUs="+ contrUsu;
           
           ResultSet resultado = sql.executeQuery(consulta);
           if(resultado.next()){
               res=true;
           }
            
        }catch(SQLException e ){
            System.out.print(e.toString());
        
        }
       
       return res;     
    }
    
    
}
