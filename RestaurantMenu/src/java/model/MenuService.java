/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author Don
 */
public class MenuService {

    private MenuItemSelectionStrategy accessor;

    public MenuService(MenuItemSelectionStrategy accessor) {
        this.setAccessor(accessor);
    }
    
    public void processOrder(String selectedItem){
        
    }

    public List<MenuItem> getMenuItems() {
        return accessor.getMenuItems();
    }

    public MenuItemSelectionStrategy getAccessor() {
        return accessor;
    }

    public void setAccessor(MenuItemSelectionStrategy accessor) {
        if(accessor == null) {
            throw new IllegalArgumentException("accessor is null");
        }
        this.accessor = accessor;
    }

}
