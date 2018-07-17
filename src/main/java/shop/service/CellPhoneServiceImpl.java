package shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import shop.mapper.CellPhoneMapper;
import shop.model.CellPhone;

@Service
@Transactional
public class CellPhoneServiceImpl implements CellPhoneService {
	private CellPhoneMapper cellPhoneMapper;

	@Autowired
	public CellPhoneServiceImpl(CellPhoneMapper cellPhoneMapper) {
		this.cellPhoneMapper = cellPhoneMapper;
	}

	public void create(CellPhone cellPhone) {
		cellPhoneMapper.create(cellPhone);
	}

	@Override
	public List<CellPhone> findAll() {
		return cellPhoneMapper.findAll();
	}

	@Override
	public CellPhone findOne(long id) {
		return cellPhoneMapper.findOne(id);
	}

	@Override
	public void delete(long id) {
		cellPhoneMapper.delete(id);
	}
}
