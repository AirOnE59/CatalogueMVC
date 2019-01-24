package fr.gilleron.cata.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.gilleron.cata.Produit;

public class CatalogueDaoImpl implements ICatalogueDAO {
	@PersistenceContext
	private EntityManager entityManager;
	
	
	private Map<String, Produit > produits = new HashMap<String, Produit>();
		Logger logger = LoggerFactory.getLogger(CatalogueDaoImpl.class);
		

	@Override 
	public void addProduit(Produit p) {
		entityManager.persist(p);
	}

	@Override
	public List<Produit> getAllProduits() {
		Query req = entityManager.createQuery("select p from Produit p");
		return req.getResultList();
	}

    @SuppressWarnings("unchecked")
	@Override
	public List<Produit> getProduits(String mc) {
		Query req = entityManager.createQuery("select p from Produit p where p.nomProduit like :x");
		req.setParameter("x", "%" + mc + "%");
		return req.getResultList();
	}



	@Override
	public void deleteProduit(Long idP) {
		Produit p = entityManager.find(Produit.class, idP);
		entityManager.remove(p);

	}

	@Override
	public void updateProduit(Produit p) {
		entityManager.merge(p);
	}

	@Override
	public Produit editProduit(Long idP) {
		Produit p = entityManager.find(Produit.class, idP);
		return p;
	}

}
