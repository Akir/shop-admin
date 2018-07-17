package shop.service;

import java.util.List;

import shop.model.CellPhone;

public interface CellPhoneService {
	void create(CellPhone cellPhone);

	List<CellPhone> findAll();

	CellPhone findOne(long id);
}
