package shop.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import shop.mapper.BrandMapper;
import shop.model.Brand;

@Service
@Transactional
public class BrandServiceImpl implements BrandService {
	private BrandMapper brandMapper;
	
	public BrandServiceImpl(BrandMapper brandMapper) {
		this.brandMapper = brandMapper;
	}

	@Override
	public List<Brand> findAll() {
		return brandMapper.findAll();
	}

}
