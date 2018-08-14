package red.manlian.service;

import java.util.List;

import red.manlian.pojo.QueryVo;
import red.manlian.pojo.Range;

public interface BackEndService {

	List<Range> findRange();

	void changeRange(List<Range> ranges);

}
