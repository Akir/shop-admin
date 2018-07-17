package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.mapper.CellPhoneMapper;
import shop.model.CellPhone;

@Service
public class CellPhoneServiceImpl implements CellPhoneService {
	private CellPhoneMapper cellPhoneMapper;

	@Autowired
	public CellPhoneServiceImpl(CellPhoneMapper cellPhoneMapper) {
		this.cellPhoneMapper = cellPhoneMapper;
	}

	public void create(CellPhone cellPhone) {
		cellPhoneMapper.create(cellPhone);
	}
}
