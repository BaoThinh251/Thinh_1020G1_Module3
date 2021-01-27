package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImp implements ProductService{

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "phone1", 100));
        products.put(2, new Product(2, "phone2", 200));
        products.put(3, new Product(3, "phone3", 300));
        products.put(4, new Product(4, "phone4", 400));
        products.put(5, new Product(5, "phone5", 500));
        products.put(6, new Product(6, "phone6", 600));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
