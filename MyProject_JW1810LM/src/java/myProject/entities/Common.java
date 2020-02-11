/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myProject.entities;

import java.text.DecimalFormat;
import java.text.NumberFormat;

/**
 *
 * @author Administrator
 */
public class Common {

    // Chuyển định dạng float sang định dạng tiền việt
    public static String formatNumber(float number) {
        if (number < 1000) {
            return String.valueOf(number);
        }
        try {
            NumberFormat formatter = new DecimalFormat("###,###");
            String resp = formatter.format(number);
            resp = resp.replaceAll(",", ".");
            return resp;
        } catch (Exception e) {
            return "";
        }
    }
    
     public static float convertToFloat(String number){           
          return Float.parseFloat(number);
      }
    
}
