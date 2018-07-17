package shop.mapper;

import shop.model.CellPhone;

public interface CellPhoneMapper {

	void create(CellPhone cellPhone);
	
	void delete(long id);
	
	void update(CellPhone cellPhone);
}
