package shop.mapper;

import java.util.List;

import shop.model.CellPhone;

public interface CellPhoneMapper {

	void create(CellPhone cellPhone);
	
	void delete(long id);
	
	void update(CellPhone cellPhone);
	
	CellPhone findOne(long id);
	
	List<CellPhone> findAll();
}
