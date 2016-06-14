package util;

import java.util.List;

/**
 * 分页工具类：包装分页的信息和结果集
 * <pre>
 *     分页效果：
 *          页数足够时：显示十个页数；当前页索引前有4个页索引，后有5页页索引
 * </pre>
 */
public class PageBean<T> {

    /*当前页数*/
    private Integer currentPage;
    /*总页数*/
    private Integer pageCount;
    /*每页大小（记录数）*/
    private Integer pageSize;
    /*总记录数*/
    private Integer totalCount;
    /*当前页存放的对象集合*/
    private List<T> recordList;
    /*当前页存放的对象个数*/
    private Integer recordCount;
    /*起始索引页位置*/
    private Integer startPageIndex;
    /*结束索引页位置*/
    private Integer endPageIndex;

    public PageBean() {
    }

    public PageBean(Integer currentPage, Integer totalCount, Integer pageSize, List<T> recordList) {
        this.currentPage = currentPage;
        this.totalCount = totalCount;
        this.pageSize = pageSize;
        this.recordList = recordList;
        this.recordCount = recordList.size();

        pageCount = (totalCount % pageSize == 0) ? (totalCount / pageSize) : (totalCount / pageSize + 1);
        if (pageCount <= 10) {
            startPageIndex = 1;
            endPageIndex = pageCount;
        } else {
            if (currentPage - 4 <= 0) {
                startPageIndex = 1;
                endPageIndex = 10;
            } else if (currentPage + 5 >= pageCount) {
                endPageIndex = pageCount;
                startPageIndex = endPageIndex - 9;
            } else {
                startPageIndex = currentPage - 4;
                endPageIndex = currentPage + 5;
            }
        }
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public List<T> getRecordList() {
        return recordList;
    }

    public void setRecordList(List<T> recordList) {
        this.recordList = recordList;
    }

    public Integer getStartPageIndex() {
        return startPageIndex;
    }

    public void setStartPageIndex(Integer startPageIndex) {
        this.startPageIndex = startPageIndex;
    }

    public Integer getEndPageIndex() {
        return endPageIndex;
    }

    public void setEndPageIndex(Integer endPageIndex) {
        this.endPageIndex = endPageIndex;
    }
}
