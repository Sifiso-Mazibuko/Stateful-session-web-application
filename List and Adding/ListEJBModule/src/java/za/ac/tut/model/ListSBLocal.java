/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author user
 */
@Local
public interface ListSBLocal {

    void add(Integer num);

    Integer getSize();
    
    List<Integer> getList();

    
    
}
