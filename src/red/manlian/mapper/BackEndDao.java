package red.manlian.mapper;

import java.util.List;

import red.manlian.pojo.QueryVo;
import red.manlian.pojo.Range;

public interface BackEndDao {

	List<Range> findRange();

	void changeRange(List<Range> ranges);

	

}
