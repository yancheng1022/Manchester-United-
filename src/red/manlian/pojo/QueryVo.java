package red.manlian.pojo;

import java.util.List;

public class QueryVo {
	
	private List<Range> rangeList;

	public List<Range> getRangeList() {
		return rangeList;
	}

	public void setRangeList(List<Range> rangeList) {
		this.rangeList = rangeList;
	}
	
	public QueryVo(List<Range> range){
		super();
		this.rangeList = range;
	}
	
	public QueryVo(){
		super();
	}
	
}
