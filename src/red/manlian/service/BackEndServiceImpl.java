package red.manlian.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import red.manlian.mapper.BackEndDao;
import red.manlian.mapper.UserDao;
import red.manlian.pojo.QueryVo;
import red.manlian.pojo.Range;

@Service
public class BackEndServiceImpl implements BackEndService{

	@Autowired
	private BackEndDao backEndDao;
	
	@Override
	public List<Range> findRange() {
		// TODO Auto-generated method stub
		return backEndDao.findRange();
	}
	
	@Override
	public void changeRange(List<Range> ranges) {
		// TODO Auto-generated method stub
		backEndDao.changeRange(ranges);
	}
	

}
