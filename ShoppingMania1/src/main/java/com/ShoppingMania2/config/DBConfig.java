package com.ShoppingMania2.config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.ShoppingMania2.model.Cart;
import com.ShoppingMania2.model.Category;
import com.ShoppingMania2.model.Orders;
import com.ShoppingMania2.model.Product;
import com.ShoppingMania2.model.ShippingAddress;
import com.ShoppingMania2.model.Supplier;
import com.ShoppingMania2.model.UserDetails;


@Configuration
@ComponentScan("com")
@EnableTransactionManagement
public class DBConfig{
	
	@Bean(name="dataSource")
	public DataSource getDataSource(){
		DriverManagerDataSource datasource=new DriverManagerDataSource();
		datasource.setDriverClassName("org.h2.Driver");
		datasource.setUrl("jdbc:h2:~/projectback");
		datasource.setUsername("root");
		datasource.setPassword("root");
		return datasource;
	}
	@Autowired
	@Bean(name="sessionfact")
	public SessionFactory getSessionFactory(){
		Properties prop=new Properties();
		prop.put("hibernate.hbm2ddl.auto", "update");
		prop.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		prop.put("hibernate.show_sql", "true");
		LocalSessionFactoryBuilder sessionFactBuilder = new LocalSessionFactoryBuilder(getDataSource());
		sessionFactBuilder.addProperties(prop);
		sessionFactBuilder.addAnnotatedClass(UserDetails.class);
		sessionFactBuilder.addAnnotatedClass(Category.class);
		sessionFactBuilder.addAnnotatedClass(Product.class);
		sessionFactBuilder.addAnnotatedClass(Supplier.class);
		sessionFactBuilder.addAnnotatedClass(Cart.class);
		sessionFactBuilder.addAnnotatedClass(ShippingAddress.class);
		sessionFactBuilder.addAnnotatedClass(Orders.class);
		
		return sessionFactBuilder.buildSessionFactory();
		
	}
	@Autowired
	@Bean(name="txManager")
	public HibernateTransactionManager getTransectionManager(){
		HibernateTransactionManager txm = new HibernateTransactionManager(getSessionFactory());
		return txm;
	}
}

