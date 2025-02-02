package joeun.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joeun.project.dao.LocationMapper;
import joeun.project.dto.API_cat_code;
import joeun.project.dto.BolgguriViewDto;
import joeun.project.dto.Location;

@Service
public class LocationServiceImpl implements LocationService {

	@Autowired
	SqlSession sqlSession;

	public List<BolgguriViewDto> getNearbyLocations(double centerX, double centerY, double radius) {
		LocationMapper locationMapper = sqlSession.getMapper(LocationMapper.class);
		Map<String, Object> params = new HashMap<>();
		params.put("centerX", centerX);
		params.put("centerY", centerY);
		params.put("radius", radius);

		return locationMapper.findNearbyLocations(params);
	}

	@Override
	public List<BolgguriViewDto> getAllGpsPoints() {
		LocationMapper locationMapper = sqlSession.getMapper(LocationMapper.class);
		return locationMapper.getAllGpsPoints();
	}

	@Override
	public List<API_cat_code> selectBolgguriCat() {
		LocationMapper locationMapper = sqlSession.getMapper(LocationMapper.class);
		
		return locationMapper.selectBolgguriCat();
	}

	@Override
	public List<API_cat_code> selectMukgguriCat() {
		LocationMapper locationMapper = sqlSession.getMapper(LocationMapper.class);
		
		return locationMapper.selectMukgguriCat();
	}

	@Override
	public List<BolgguriViewDto> getNearbyMukgguri(double centerX, double centerY, double radius) {
		LocationMapper locationMapper = sqlSession.getMapper(LocationMapper.class);
		Map<String, Object> params = new HashMap<>();
		params.put("centerX", centerX);
		params.put("centerY", centerY);
		params.put("radius", radius);

		return locationMapper.findNearbyMukgguri(params);
	}
}
