package com.turing.mapper;

import com.turing.entity.CstActivity;
import com.turing.entity.CstActivityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CstActivityMapper {
    long countByExample(CstActivityExample example);

    int deleteByExample(CstActivityExample example);

    int deleteByPrimaryKey(Integer atvId);

    int insert(CstActivity record);

    int insertSelective(CstActivity record);

    List<CstActivity> selectByExampleWithBLOBs(CstActivityExample example);

    List<CstActivity> selectByExample(CstActivityExample example);

    CstActivity selectByPrimaryKey(Integer atvId);

    int updateByExampleSelective(@Param("record") CstActivity record, @Param("example") CstActivityExample example);

    int updateByExampleWithBLOBs(@Param("record") CstActivity record, @Param("example") CstActivityExample example);

    int updateByExample(@Param("record") CstActivity record, @Param("example") CstActivityExample example);

    int updateByPrimaryKeySelective(CstActivity record);

    int updateByPrimaryKeyWithBLOBs(CstActivity record);

    int updateByPrimaryKey(CstActivity record);
}