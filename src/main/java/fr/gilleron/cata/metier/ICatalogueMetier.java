package fr.gilleron.cata.metier;

import java.util.List;

import fr.gilleron.cata.Produit;

public interface ICatalogueMetier {

	public void addProduit(Produit p);
	public List<Produit> getAllProduits();
	public List<Produit> getProduits(String mc);
	public void deleteProduit(Long idP);
	public void updateProduit(Produit p);
	public Produit editProduit(Long idP);
}
