package com.turing.mapper;

import com.turing.entity.SysRigth;
import com.turing.entity.SysRigthExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysRigthMapper {
    long countByExample(SysRigthExample example);

    int deleteByExample(SysRigthExample example);

    int deleteByPrimaryKey(Integer rightId);

    int insert(SysRigth record);

    int insertSelective(SysRigth record);

    List<SysRigth> selectByExample(SysRigthExample example);

    SysRigth selectByPrimaryKey(Integer rightId);

    int updateByExampleSelective(@Param("record") SysRigth record, @Param("example") SysRigthExample example);

    int updateByExample(@Param("record") SysRigth record, @Param("example") SysRigthExample example);

    int updateByPrimaryKeySelective(SysRigth record);

    int updateByPrimaryKey(SysRigth record);
}