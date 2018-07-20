package shop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import shop.mapper.UsernameMapper;
import shop.model.Username;

@Service
public class UsernameServiceImpl implements UsernameService {
	private UsernameMapper usernameMapper;
	
	public UsernameServiceImpl(UsernameMapper usernameMapper) {
		this.usernameMapper = usernameMapper;
	}
	
	@Override
	public List<Username> findAll() {
		return usernameMapper.findAll();
	}

}
