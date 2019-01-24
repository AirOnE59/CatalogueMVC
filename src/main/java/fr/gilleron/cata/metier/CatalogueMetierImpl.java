package fr.gilleron.cata.metier;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import fr.gilleron.cata.Produit;
import fr.gilleron.cata.dao.ICatalogueDAO;

public class CatalogueMetierImpl implements ICatalogueMetier {

	private ICatalogueDAO dao;
	
	public ICatalogueDAO getDao() {
		return dao;
	}

	public void setDao(ICatalogueDAO dao) {
		this.dao = dao;
	}

	@Override
	@Transactional
	public void addProduit(Produit p) {
		dao.addProduit(p);
	}

	@Override
	public List<Produit> getAllProduits() {
		return dao.getAllProduits();
	}

	@Override
	public List<Produit> getProduits(String mc) {
		return dao.getProduits(mc);
	}

	@Override
	@Transactional
	public void deleteProduit(Long idP) {
		dao.deleteProduit(idP);

	}

	@Override
	@Transactional
	public void updateProduit(Produit p) {
		dao.updateProduit(p);

	}

	@Override
	public Produit editProduit(Long idP) {
		return dao.editProduit(idP);
	}

}
