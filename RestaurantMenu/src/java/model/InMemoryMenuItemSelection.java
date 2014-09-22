/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Don
 */
public class InMemoryMenuItemSelection implements MenuItemSelectionStrategy {

    private List<MenuItem> items;

    public InMemoryMenuItemSelection() {
        items = new ArrayList<MenuItem>();
        MenuItem item = new MenuItem("Small Cheese Pizza", 7.99);
        items.add(item);
        item = new MenuItem("Medium Cheese Pizza", 9.95);
        items.add(item);
        item = new MenuItem("Large Cheese Pizza", 13.95);
        items.add(item);
        item = new MenuItem("Small Sausage Pizza", 8.99);
        items.add(item);
        item = new MenuItem("Medium Sausage Pizza", 10.95);
        items.add(item);
        item = new MenuItem("Large Sausage Pizza", 14.95);
        items.add(item);
        item = new MenuItem("Small Pepperoni Pizza", 8.99);
        items.add(item);
        item = new MenuItem("Medium Pepperoni Pizza", 10.95);
        items.add(item);
        item = new MenuItem("Large Pepperoni Pizza", 14.95);
        items.add(item);
        item = new MenuItem("Garlic Bread Sticks", 3.95);
        items.add(item);
        item = new MenuItem("Garlic Cheese Bread", 4.95);
        items.add(item);

    }

    @Override
    public List<MenuItem> getMenuItems() {
        return items;
    }

}
